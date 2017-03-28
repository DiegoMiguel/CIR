using CirWebView.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;
using System.Web.Mvc;
using System.Net;
using System.Net.Http;
using Newtonsoft.Json;

namespace CirWebView.Controllers

{
    public class UsuarioController : Controller
    {
        private HttpContext _sessaoCorrente;

        public UsuarioController()
        {
            _sessaoCorrente = System.Web.HttpContext.Current;
        }

        public async Task<string> Autenticar(string email, string senha)
        {
            HttpResponseMessage responseMessage;

            using (var client = new HttpClient())
            {
                // Config client
                client.BaseAddress = new Uri("http://cirapi.azurewebsites.net/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                // Config Dados de login (body)
                var form = new Dictionary<string, string>
               {
                   {"grant_type", "password"},
                   {"username", email},
                   {"password", senha}
               };

                try
                {
                    //envia requisicao e recebe resposta do tipo HttpResponseMessage
                    responseMessage = client.PostAsync(client.BaseAddress + "/token", new FormUrlEncodedContent(form)).Result;
                }
                catch
                {
                    return "Erro no Servidor! Tente novamente mais tarde, Obrigado";
                }

            }
                if (!responseMessage.IsSuccessStatusCode)
                {
                    _sessaoCorrente.Session["token"] = null;

                    if (responseMessage.StatusCode.Equals(HttpStatusCode.BadRequest))
                    {
                        return "Email e/ou senha inválidos!";
                    }

                    return "Erro interno! Tente novamente mais tarde, Obrigado";
                }

                //get access token from response body
                var responseJson = responseMessage.Content.ReadAsStringAsync(); // Serializa resposta em string
                JObject json = JObject.Parse(responseJson.Result);  // Serializa string para objeto json

                _sessaoCorrente.Session["token"] = json.GetValue("access_token").ToString();


                return "ok";
        }

        public async Task<string> Cadastrar(Usuario usuario)
        {
            HttpContext sessaoCorrente = System.Web.HttpContext.Current;
            HttpResponseMessage response;
            using (var client = new HttpClient())
            {
                // Config client
                client.BaseAddress = new Uri("http://cirapi.azurewebsites.net/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                try
                {
                    response = await client.PostAsJsonAsync(client.BaseAddress + "/api/contas/registrar", usuario);
                }
                catch (Exception)
                {
                    throw new Exception("Erro no Servidor! Tente novamente mais tarde, Obrigado");
                }
            }
            if (!response.IsSuccessStatusCode)
            {
                if (response.StatusCode.Equals(HttpStatusCode.BadRequest))
                {   
                    // Lista de erros no formato {"Atributo1 do Modelo": ["erro1", "erro2"...], "Atributo2 do Modelo": ["erro1", "erro2"...] ...}
                    return response.Content.ReadAsAsync<JObject>().Result.GetValue("modelState").ToString();
                }
                if (response.StatusCode.Equals(HttpStatusCode.Conflict))
                {
                    throw new Exception("Email já cadastrado!");
                }
                throw new Exception("Erro interno! Reveja os dados inseridos e tente novamente");
            }

            _sessaoCorrente.Session["id"] = response.Content.ReadAsAsync<int>().Result;
            _sessaoCorrente.Session["nome"] = usuario.Nome;
            _sessaoCorrente.Session["cidade_id"] = usuario.Cidade_id;

            return "ok";    
        }
    }
}