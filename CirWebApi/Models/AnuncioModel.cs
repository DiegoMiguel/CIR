using System;
using System.ComponentModel.DataAnnotations;

namespace CirWebApi.Models
{
    public class AnuncioModel
    {
        public int ID { get; set; }

        [Required(ErrorMessage = "Informe o titulo do Anúncio!")]
        public string TITULO { get; set; }

        public string DESCRICAO { get; set; }

        public DateTime DATA { get; set; }
        public string IMAGEM { get; set; }

        [Required(ErrorMessage = "Qual a categoria do Anúncio?")]
        public int CATEGORIA_ID { get; set; }

        [Required(ErrorMessage = "Id do Usuário responsável requerido!")]
        public int USUARIO_ID { get; set; }

        public string CIDADE { get; internal set; } // A cidade será a mesma do usuário!
    }
}