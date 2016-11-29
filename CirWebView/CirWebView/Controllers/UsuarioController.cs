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

namespace CirWebView.Controllers

{
    public class UsuarioController : Controller
    {
        public async Task<string> Autenticar(string email, string senha)
        {
            HttpContext sessaoCorrente = System.Web.HttpContext.Current;
            HttpResponseMessage responseMessage;

            using (var client = new HttpClient())
            {
                // Config client
                client.BaseAddress = new Uri("http://localhost/cirwebapi");
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
                    sessaoCorrente.Session["token"] = null;

                    if (responseMessage.StatusCode.Equals(HttpStatusCode.BadRequest))
                    {
                        return "Email e/ou senha inválidos!";
                    }

                    return "Erro interno! Tente novamente mais tarde, Obrigado";
                }

                //get access token from response body
                var responseJson = responseMessage.Content.ReadAsStringAsync(); // Serializa resposta em string
                JObject json = JObject.Parse(responseJson.Result);  // Serializa string para objeto json
                sessaoCorrente.Session["token"] = json.GetValue("access_token").ToString();
                return "ok";
        }

        public async void Cadastrar(Usuario usuario)
        {
            HttpContext sessaoCorrente = System.Web.HttpContext.Current;
            using (var client = new HttpClient())
            {
                // Config client
                client.BaseAddress = new Uri("http://localhost/cirwebapi");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage response = await client.PostAsJsonAsync(client.BaseAddress + "/api/contas/registrar", usuario);





            }
        }
    }
}