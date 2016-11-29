using CirWebView.Controllers;
using CirWebView.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CirWebView.View
{
    public partial class signin1 : System.Web.UI.Page
    {
        protected string _loginMessage;

        protected void Page_Load(object sender, EventArgs e)
        {
            string acao = Request.QueryString["action"];

            if (acao != null) {   // Quer dizer que ação é igual a login!
                EfetuarLogin();
            }
            if (!IsPostBack)
            {
                CarregarEstados();
            }

        }

        private void CarregarEstados()
        {
            try
            {
                ddlEstados.DataSource = new CidadesController().getEstados();
                ddlEstados.DataBind();
                ddlEstados.Items.Insert(0, new ListItem("----Selecione o Estado----"));
            }
            catch (Exception ex)
            {
                lblLocal.Text = "Erro: " + ex.Message;
            }
        }

        protected void ddlEstados_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ddlCidades.Visible = true;
                ddlCidades.DataSource = new CidadesController().getCidades(ddlEstados.Text);
                ddlCidades.DataTextField = "cidade1";
                ddlCidades.DataValueField = "cidade_id";
                ddlCidades.DataBind();
                ddlCidades.Items.Insert(0, new ListItem("----Selecione a Cidade ----"));
            }
            catch (Exception ex)
            {
                lblLocal.Text = "Erro: " + ex.Message;
            }
        }

        protected void EfetuarLogin()
        {
            string email = Request.Form["txtEmail"];
            string senha = Request.Form["txtSenha"];

            string statusMessenger = new UsuarioController().Autenticar(email, senha).Result;

            if (!statusMessenger.Equals("ok"))
                _loginMessage = statusMessenger; // Problema no login!
            else
                Server.Transfer("ad-post.aspx");
        }

        protected void radioCpf_CheckedChanged(object sender, EventArgs e)
        {
            cadCpfCnpj.CssClass = "form-control cpf";
        }

        protected void radioCnpj_CheckedChanged(object sender, EventArgs e)
        {
            cadCpfCnpj.CssClass = "form-control cnpj";
        }

        protected void ddlCidades_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblLocal.Text = ddlCidades.SelectedValue + " " + ddlCidades.SelectedItem + "-" + ddlEstados.Text;
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario
            {
                Nome = cadNome.Text,
                Cpf_Cnpj = cadCpfCnpj.Text,
                Email = cadEmail.Text,
                Senha = cadSenha.Text,
                Cidade_id = Convert.ToInt32(ddlCidades.SelectedValue)
            };

            

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