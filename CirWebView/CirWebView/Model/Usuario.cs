using System.ComponentModel.DataAnnotations;

namespace CirWebView.Model
{
    public class Usuario
    {
        [Required, MinLength(2)]
        public object Nome { get; internal set; }

        [Required]
        public string Cpf_Cnpj { get; set; }

        [Required, DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required][DataType(DataType.Password), MinLength(6)]
        public string Senha { get; set; }

        [Required]
        public int Cidade_id { get; set; }
    }
}