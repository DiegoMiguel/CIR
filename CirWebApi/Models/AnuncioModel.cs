using System;

namespace CirWebApi.Models
{
    public class AnuncioModel
    {
        public int ID { get; set; }
        public string TITULO { get; set; }
        public string DESCRICAO { get; set; }
        public DateTime DATA { get; set; }
        public string IMAGEM { get; set; }
        public int CATEGORIA_ID { get; set; }
        public int USUARIO_ID { get; set; }
        public string CIDADE { get; internal set; }
    }
}