using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CirWebApi.Models
{
    public class UsuarioModel
    {
        public int ID { get; set; }

        [MinLength(2, ErrorMessage = "Nome inválido!")]
        public string NOME { get; set; }

        [Required]
        public string CPF_CNPJ { get; set; }

        [Required]
        public int CIDADE_ID { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        public string EMAIL { get; set; }

        [StringLength(100, ErrorMessage = "A {0} deve conter ao menos {2} caracteres!", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Senha")]
        public string SENHA { get; set; }
    }
}