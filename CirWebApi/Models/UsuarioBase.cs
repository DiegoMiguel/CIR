using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CirWebApi.Models
{
    public class UsuarioBase
    {
        public int ID { get; set; }
        public string NOME { get; set; }
        public string CPF_CNPJ { get; set; }
        public int CIDADE_ID { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        public string EMAIL { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string SENHA { get; set; }
    }
}