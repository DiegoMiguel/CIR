using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using CirWebApplication.Controllers;

namespace CirWebApplication
{
    /// <summary>
    /// Summary description for UsrCadLogin
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class UsrCadLogin : System.Web.Services.WebService
    {

        [WebMethod]
        public void incluiUsr(string nome, string cpf_cnpf, int cidade_id, DateTime data_cadasto, string emai, string senha, string telefone)
        {
            clsUsuarios objUsuario = new clsUsuarios();
            objUsuario.nome = nome;
            objUsuario.cpf_cnpj = cpf_cnpf;
            objUsuario.cidade_id = cidade_id;
            objUsuario.data_cadastro = data_cadasto;
            objUsuario.email = emai;
            objUsuario.senha = senha;
            objUsuario.telefone = telefone;
        }

        [WebMethod]
        public void alteraUsr(string nome, string cpf_cnpf, int cidade_id, DateTime data_cadasto, string emai, string senha, string telefone)
        {
            clsUsuarios objUsuario = new clsUsuarios();
            objUsuario.nome = nome;
            objUsuario.cpf_cnpj = cpf_cnpf;
            objUsuario.cidade_id = cidade_id;
            objUsuario.data_cadastro = data_cadasto;
            objUsuario.email = emai;
            objUsuario.senha = senha;
            objUsuario.telefone = telefone;
        }

        [WebMethod]
        public DataSet obterUsr(int usuario_id)
        {
            clsUsuarios objUsuario = new clsUsuarios();
            objUsuario.usuario_id = usuario_id;
            return objUsuario.obter();
        }

        [WebMethod]
        public void excluirUsr(int usuario_id)
        {
            clsUsuarios objUsuario = new clsUsuarios();
            objUsuario.usuario_id = usuario_id;
            objUsuario.excluir();
        }

        [WebMethod]
        public void autenticarUsr(string email, string senha)
        {
            clsUsuarios objUsuario = new clsUsuarios();
            objUsuario.email = email;
            objUsuario.senha = senha;
            int usuario_id = objUsuario.autenticar();
            return ;
        }
    }
}

