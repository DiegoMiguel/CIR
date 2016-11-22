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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string token = new UsuarioController().Autenticar(txtEmail.Text, txtSenha.Text).Result;
            Server.Transfer("ad-post.aspx");

           /* if (usuarioAutenticado != null)
            {
                Session["autenticacao"] = "OK";
                Session["idUsuario"] = usuarioAutenticado.Id;
                Session["nomeUsuario"] = usuarioAutenticado.Nome;
                Session["senhaUsuario"] = usuarioAutenticado.Senha;

                Server.Transfer("Default.aspx");
            }
            else
            {
                lblMensagem.Text = "Email e/ou Senha Inválidos!";
            }*/
        }
    }
}