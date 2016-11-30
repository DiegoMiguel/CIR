using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CirWebView.View
{
    public partial class ad_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSession.Text = "Token: " + Session["token"] + "\nID Usuário: " + Session["id"] + "\nNome: " + 
                Session["nome"] + "\n ID Cidade: " + Session["cidade_id"];
        }
    }
}