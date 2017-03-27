using CirWebView.Controllers;
using CirWebView.Model;
using Newtonsoft.Json.Linq;
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
        protected List<string> _erros;
        protected bool _controleErrosCadastro = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            _erros = new List<string>();

            string acao = Request.QueryString["action"];

            if (acao != null) {   // Quer dizer que ação é igual a login!
                EfetuarLogin(Request.Form["txtEmail"], Request.Form["txtSenha"]);
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
                lblError.Text = "Erro: " + ex.Message;
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
                lblError.Text = "Erro: " + ex.Message;
            }
        }

        protected void EfetuarLogin(string email, string senha)
        {
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
            
            try
            {
                string statusDoCadastro = new UsuarioController().Cadastrar(usuario).Result;
                if (statusDoCadastro.Equals("ok"))
                {
                    EfetuarLogin(cadEmail.Text, cadSenha.Text);
                    Server.Transfer("ad-post.aspx");
                }
                else
                {       // A função Cadastrar detectou valores incorretos e repassou a lista de erros
                    _controleErrosCadastro = true;
                    recuperarErrosDoModel(statusDoCadastro);
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.InnerException.Message;
            }

            
        }

        protected void recuperarErrosDoModel(string modelState)
        {
            // Lista de erros no formato {"Atributo1 do Modelo": ["erro1", "erro2"...], "Atributo2 do Modelo": ["erro1", "erro2"...] ...}
            JObject json = JObject.Parse(modelState); // Transforma lista em json

            List<string> listaDeErros = new List<string>();

            string[] errosDoAtributo;
            for (int i = 0; i < json.Count; i++)    // json.count: número de pares {"atributo": erros[]}
            {
                errosDoAtributo = json.Values().ElementAt(i).ToObject<string[]>();    // selecionando o array de erros de cada atributo

                foreach (string erro in errosDoAtributo) // no array, selecionando os erros
                {
                    listaDeErros.Add(erro);
                }
            }
            _erros = listaDeErros;
        }
    }
}