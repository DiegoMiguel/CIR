using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.Http;
using System.Web.Http.Description;

namespace CirWebApi.Controllers
{
    public class ImageHelper : ApiController
    {
        public enum Tipo
        {
            Real, Thumbnail
        }

        private readonly string _root;
        private readonly string _anuncioPath;
        private readonly string _thumbnailPath;
        public const string ThumbIdentifier = "thumb_";

        public ImageHelper(HttpContext currentContext) // HttpContext.Current se refere ao ambiente em que
                                                          // a requisição foi obtida. É necessário para o compilador
                                                          // se referir à pasta correta.
        {
            _root = currentContext.Server.MapPath(@"~\bin\Galeria\");
            _anuncioPath = Path.Combine(_root, @"Anuncios\");
            _thumbnailPath = Path.Combine(_root, @"Thumbnails\");
        }

        /// <summary>
        /// Responsável por salvar a imagem e gerar um thumbnail da mesma
        /// </summary>
        /// <param name="imagem"> Imagem recebida na requisição </param>
        /// <param name="idAnuncio"> Provável id que será gerado </param>
        /// <returns> Nome do Arquivo para ser salvo no Banco de Dados </returns>
        public string Salvar(string imagem, int idAnuncio)
        {
            if (string.IsNullOrWhiteSpace(imagem))
            {
                return null;
            }

           
            byte[] imgInByte = Convert.FromBase64String(imagem);

            Image imgReal;
            string imageFile;
            using (MemoryStream stream = new MemoryStream(imgInByte))
            {
                imgReal = Image.FromStream(stream);

                string imageFormat = new ImageFormatConverter().ConvertToString(imgReal.RawFormat);

                // Nome do arquivo
                imageFile = "Anuncio" + idAnuncio + "." + imageFormat;

                // Criando e Salvando Thumbnail
                Image thumbnail = new Bitmap(imgReal, 110, 112);
                thumbnail.Save(_thumbnailPath + ThumbIdentifier + imageFile); // (~/Galeria/Thumbnails/
                                                                              // thumb_Anuncio[N].[extensao])
                                                                              // Salvando imagem
                imgReal.Save(_anuncioPath + imageFile); // (~/Galeria/Anuncios/Anuncio[N].[extensao])
            }    
            return imageFile;
        }

        /// <summary>
        /// Recupera a imagem salva previamente na pasta de servidor e no banco de dados.
        /// </summary>
        /// <param name="tipo">
        /// Real: Trata a imagem em maior tamanho e qualidade
        /// Thumbnail: Representação em miniatura (110, 112)px
        /// </param>
        /// <param name="imageFile">Nome, salvo no banco, do arquivo da imagem</param>
        /// <returns></returns>
        public string Load(Tipo tipo, string imageFile)
        {
            if (string.IsNullOrWhiteSpace(imageFile))
            {
                return null;
            }

            string path = tipo.Equals(Tipo.Real) ?
                            (_anuncioPath + imageFile) : (_thumbnailPath + imageFile);

            Image imagem = Image.FromFile(path);

            using (MemoryStream ms = new MemoryStream()) // carrega aos poucos a imagem
                                                         // na memoria
            {
                imagem.Save(ms, imagem.RawFormat);

                return Convert.ToBase64String(ms.ToArray());
            }
        }
    }
}
