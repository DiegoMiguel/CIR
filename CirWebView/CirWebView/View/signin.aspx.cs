using CirWebView.Controllers;
using CirWebView.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CirWebView.View
{
    public partial class signin1 : System.Web.UI.Page
    {
        protected string mensagem;

        protected void Page_Load(object sender, EventArgs e)
        {
            string acao = Request.QueryString["action"];

            if (acao != null)   // Quer dizer que ação é igual a login!
                EfetuarLogin();
        }

        private void EfetuarLogin()
        {
            string email = Request.Form["txtEmail"];
            string senha = Request.Form["txtSenha"];

            bool sucess = new UsuarioController().Autenticar(email, senha).Result;

            if (!sucess)
                mensagem = "Email e/ou senha inválidos!";
            else
                Server.Transfer("ad-post.aspx");
        }

 /*       protected void btnEntrar_Click(object sender, EventArgs e)
        {
            bool sucess = new UsuarioController().Autenticar(txtEmail.Text, txtSenha.Text).Result;

            if (!sucess)
                lblMensagem.Text = "Email e/ou senha inválidos!";
            else
                Server.Transfer("ad-post.aspx");
                           

            /* if (usuarioAutenticado != null)
             {
                 
                 Session["idUsuario"] = usuarioAutenticado.Id;
                 Session["nomeUsuario"] = usuarioAutenticado.Nome;
                 Session["senhaUsuario"] = usuarioAutenticado.Senha;

                 Server.Transfer("Default.aspx");
             }
             else
             {
                 
             }
        }*/
    }
}