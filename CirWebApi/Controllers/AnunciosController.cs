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

namespace CirWebApi.Controllers
{
    [RoutePrefix("api/Anuncios")]
    public class AnunciosController : ApiController
    {
        private CIREntities db = new CIREntities();

        /// <summary>
        /// Retorna a lista de anúncios ordenada pela cidade > data > estado de origem
        /// </summary>
        /// <param name="IDCidadeUsuario">
        /// Id da cidade do usuário logado na requisição, responsável pela ordenação da lista
        /// </param>
        /// <returns>
        /// Lista de Anúncios ordenados pela cidade, data e estado
        /// </returns>
        [Route("{IDCidadeUsuario}")]
        public IQueryable<AnuncioModel> GetAnuncios(int IDCidadeUsuario)
        {
            string estadoUsuario = db.cidades.Where(cidade => cidade.Cidade_id == IDCidadeUsuario).Select(cidade => cidade.UF).First();

            return db.anuncios.OrderByDescending(anuncio => anuncio.usuario.Cidade_id == IDCidadeUsuario)
                              .ThenByDescending(anuncio => anuncio.usuario.cidade.UF.Equals(estadoUsuario))
                              .ThenByDescending(anuncio => anuncio.Data)
                              .Select(anuncio => new AnuncioModel
                              {
                                  ID = anuncio.Anuncio_id,
                                  TITULO = anuncio.titulo,
                                  DESCRICAO = anuncio.Descricao,
                                  DATA = anuncio.Data,
                                  IMAGEM = anuncio.Imagem,
                                  CATEGORIA_ID = anuncio.Categoria_Produto_id,
                                  USUARIO_ID = anuncio.Usuario_id,
                                  CIDADE = anuncio.usuario.cidade.Cidade1
                              });
        }

        /// <summary>
        /// Não Implementado!
        /// </summary>
        /// <returns></returns>
        // GET: api/Anuncios/5
        [ResponseType(typeof(anuncio))]
        public async Task<IHttpActionResult> Getanuncio(int id)
        {
            anuncio anuncio = await db.anuncios.FindAsync(id);
            if (anuncio == null)
            {
                return NotFound();
            }

            return Ok(anuncio);
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

        // POST: api/Anuncios
        /// <summary>
        /// Adiciona anúncio
        /// </summary>
        /// <param name="novoAnuncio">
        /// Devem ser enviados os atributos:
        /// TITULO, DESCRICAO, USUARIO_ID, IMAGEM e CATEGORIA_ID 
        /// OBS: Descicao e Imagem podem ser nulos (não serem descritos na requisição)
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

            db.anuncios.Add(new anuncio
            {
                titulo = novoAnuncio.TITULO,
                Descricao = novoAnuncio.DESCRICAO,
                Usuario_id = novoAnuncio.USUARIO_ID,
                Imagem = novoAnuncio.IMAGEM,
                Categoria_Produto_id = novoAnuncio.CATEGORIA_ID,
                Data = DateTime.Now
            });

            await db.SaveChangesAsync();
            
            int idGerado = db.anuncios.OrderByDescending(anuncio => anuncio.Anuncio_id).First().Anuncio_id;

            return Created("DefaultApi", new { idGerado });
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

            db.anuncios.Remove(anuncio);
            await db.SaveChangesAsync();

            return Ok(anuncio);
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