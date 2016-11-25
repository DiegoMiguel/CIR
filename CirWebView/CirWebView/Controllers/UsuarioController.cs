using CirWebView.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;

namespace CirWebView.Controllers

{
    public class UsuarioController
    {
        public async Task<string> Autenticar(string email, string senha)
        {
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

                //enviando requisicao
                var responseMessage = client.PostAsync(client.BaseAddress + "/token", new FormUrlEncodedContent(form)).Result;

                //get access token from response body
                var responseJson = responseMessage.Content.ReadAsStringAsync(); 
                JObject json = JObject.Parse(responseJson.Result);
                return json.GetValue("access_token").ToString();
            }
        }
    }
}