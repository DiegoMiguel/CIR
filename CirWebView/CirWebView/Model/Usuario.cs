using System.ComponentModel.DataAnnotations;

namespace CirWebView.Model
{
    public class Usuario
    {
        public object Nome { get; internal set; }

        public string Cpf_Cnpj { get; set; }

        public string Email { get; set; }

        public string Senha { get; set; }

        public int Cidade_id { get; set; }
    }
}