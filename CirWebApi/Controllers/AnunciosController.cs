using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using CirWebApi.Models;
using System.Data.Entity.Validation;
using System.Drawing;
using System.IO;
using System.Web;
using System.Drawing.Imaging;

namespace CirWebApi.Controllers
{
    [RoutePrefix("api/Anuncios")]
    public class AnunciosController : ApiController
    {
        private CIREntities db = new CIREntities();
        private HttpContext _currentContext = HttpContext.Current;

        /// <summary>
        /// Retorna a lista de anúncios ordenada pela cidade > data > estado de origem
        /// </summary>
        /// <param name="IDCidadeUsuario">
        /// Id da cidade do usuário logado na requisição, responsável pela ordenação da lista
        /// </param>
        /// <returns>
        /// Lista de Anúncios ordenados pela cidade, data e estado
        /// No campo "IMAGEM", será enviado o Thumbnail, caso exista, em StringBase64.
        /// </returns>
        [Route("{IDCidadeUsuario:int}")]
        public IEnumerable<AnuncioModel> GetAnuncios(int IDCidadeUsuario)
        {
            string estadoUsuario = db.cidades.Where(cidade => cidade.Cidade_id == IDCidadeUsuario).Select(cidade => cidade.UF).First();

            // Para poder chamar a função setImagem dentro da query LINQ,
            //  transformo a lista de acesso ao banco de DbSet para IEnumerable.
            // "AsEnumerable" nessa posição evita o erro de DataReader, em outras posições
            // a query poderia ser repartida em outras threads ocorrendo erro por elas se dependerem
            // e serem finalizadas em momentos distintos.
            return db.anuncios.AsEnumerable().OrderByDescending(anuncio => anuncio.usuario.Cidade_id == IDCidadeUsuario)
                            .ThenByDescending(anuncio => anuncio.usuario.cidade.UF.Equals(estadoUsuario))
                            .ThenByDescending(anuncio => anuncio.Data)        
                            .Select(anuncio => new AnuncioModel
                            {
                                ID = anuncio.Anuncio_id,
                                TITULO = anuncio.titulo,
                                DESCRICAO = anuncio.Descricao,
                                DATA = anuncio.Data,
                                IMAGEM = setImagem(ImageHelper.Tipo.Thumbnail, anuncio.Thumbnail),
                                CATEGORIA_ID = anuncio.Categoria_Produto_id,
                                USUARIO_ID = anuncio.Usuario_id,
                                CIDADE = anuncio.usuario.cidade.Cidade1
                            }); 
            
        }

        private string setImagem(ImageHelper.Tipo tipo, string imageFile)
        {
            if (!string.IsNullOrWhiteSpace(imageFile))
            {
                return new ImageHelper(_currentContext).Load(tipo, imageFile);
            }
            return null;
        }

        /// <summary>
        /// Recupera anúncio salvo com um Id específico
        /// </summary>
        /// <returns>
        /// Objeto representando o anúncio cadastrado
        /// No campo "IMAGEM", será enviada a Imagem no tamanho real, caso exista, em StringBase64.
        /// </returns>
        /// <remarks>OBS:: Verificar a rota! (/api/anuncios/anuncio/id)</remarks>
        // GET: api/Anuncios/Anuncio/5
        [Route("anuncio/{id}")]
        [ResponseType(typeof(AnuncioModel))]
        public async Task<IHttpActionResult> Getanuncio(int id)
        {
            anuncio anuncio = await db.anuncios.FindAsync(id);
            if (anuncio == null)
            {
                return NotFound();
            }

            AnuncioModel anuncioEncontrado = new AnuncioModel
            {
                ID = id,
                TITULO = anuncio.titulo,
                DESCRICAO = anuncio.Descricao,
                DATA = anuncio.Data,
                IMAGEM = setImagem(ImageHelper.Tipo.Real, anuncio.Imagem),
                CATEGORIA_ID = anuncio.Categoria_Produto_id,
                USUARIO_ID = anuncio.Usuario_id,
                CIDADE = anuncio.usuario.cidade.Cidade1
            };

            return Ok(anuncioEncontrado);
        }

        /// <summary>
        /// Não Implementado!
        /// </summary>
        /// <returns></returns>
        // PUT: api/Anuncios/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> Putanuncio(int id, anuncio anuncio)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != anuncio.Anuncio_id)
            {
                return BadRequest();
            }

            db.Entry(anuncio).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!anuncioExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        internal void DeleteAnunciosImages(List<anuncio> anuncios)
        {
            anuncios.ForEach(anuncio => DeleteImage(anuncio));
        }

        // POST: api/Anuncios
        /// <summary>
        /// Adiciona anúncio
        /// </summary>
        /// <param name="novoAnuncio">
        /// Devem ser enviados os atributos: 
        /// TITULO, DESCRICAO, USUARIO_ID, IMAGEM e CATEGORIA_ID
        /// OBS: ¹ Descicao e Imagem podem ser nulos (não serem descritos na requisição)
        ///      ² A imagem deve ser String Base64.
        /// </param>
        /// <returns>
        /// Confirmação da criação com o idGerado
        /// </returns>
        [ResponseType(typeof(int))]
        public async Task<IHttpActionResult> PostAnuncio(AnuncioModel novoAnuncio)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            // Assume que id's inválidos podem ser obtidos para a nomeação das imagens:
            // se ocorre algum erro no salvamento de informações no banco de dados,
            // o id do dado com erro é pulado e no proximo processamento, o incremento
            // seleciona o próximo
            int novoId = db.anuncios.Max(anuncio => anuncio.Anuncio_id) + 1;

            string imageFile;
            try
            {
                imageFile = new ImageHelper(_currentContext).Salvar(novoAnuncio.IMAGEM, novoId);
            }
            catch 
            {
                return BadRequest("Imagem Inválida!");
            }

            string thumbnail = (imageFile == null) ? null : ImageHelper.ThumbIdentifier + imageFile;

            db.anuncios.Add(new anuncio
            {
                titulo = novoAnuncio.TITULO,
                Descricao = novoAnuncio.DESCRICAO,
                Usuario_id = novoAnuncio.USUARIO_ID,
                Imagem = imageFile,
                Categoria_Produto_id = novoAnuncio.CATEGORIA_ID,
                Data = DateTime.Now,
                Thumbnail = thumbnail
            });

            await db.SaveChangesAsync();

            // Garante o número correto do novoId gerado
            return Ok(db.anuncios.OrderByDescending(anuncio => anuncio.Anuncio_id).First().Anuncio_id);
        }

        /// <summary>
        /// Não Implementado!
        /// </summary>
        /// <returns></returns>
        // DELETE: api/Anuncios/5
        [ResponseType(typeof(anuncio))]
        public async Task<IHttpActionResult> Deleteanuncio(int id)
        {
            anuncio anuncio = await db.anuncios.FindAsync(id);
            if (anuncio == null)
            {
                return NotFound();
            }

            DeleteImage(anuncio);

            db.anuncios.Remove(anuncio);
            await db.SaveChangesAsync();

            return Ok(anuncio);
        }

        private void DeleteImage(anuncio anuncio)
        {
            if (!string.IsNullOrWhiteSpace(anuncio.Imagem)){
                new ImageHelper(_currentContext).DeleteAnuncioImages(anuncio.Imagem, anuncio.Thumbnail);
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool anuncioExists(int id)
        {
            return db.anuncios.Count(e => e.Anuncio_id == id) > 0;
        }
    }
}