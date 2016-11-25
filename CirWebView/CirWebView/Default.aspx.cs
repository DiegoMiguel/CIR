using CirWebView.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CirWebView
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)    // PostBack é quando a página tem que ir até o servidor para processar alguma informação e depois
                                //retorna à própria página.
            {
                CompletarLogin();
            }
        }

        private void CompletarLogin()
        {   
            string email = Request.Form["txtEmail"];
            string senha = Request.Form["txtSenha"];

            bool sucess = new UsuarioController().Autenticar(email, senha).Result;


        }
    }
}
