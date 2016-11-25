﻿using CirWebView.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;
using System.Web.Mvc;

namespace CirWebView.Controllers

{
    public class UsuarioController
    {
        public async Task<bool> Autenticar(string email, string senha)
        {
            HttpContext sessaoCorrente = HttpContext.Current;
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

                
                //enviando requisicao e recebe resposta do tipo HttpResponseMessage
                var responseMessage = client.PostAsync(client.BaseAddress + "/token", new FormUrlEncodedContent(form)).Result;

                if (responseMessage.StatusCode != System.Net.HttpStatusCode.OK)
                {
                    sessaoCorrente.Session["token"] = null;
                    return false;
                }

                //get access token from response body
                var responseJson = responseMessage.Content.ReadAsStringAsync(); // Serializa resposta em string
                JObject json = JObject.Parse(responseJson.Result);  // Serializa string para objeto json
                sessaoCorrente.Session["token"] = json.GetValue("access_token").ToString();
                return true;
            }
        }

        public ActionResult Registrar(object sender, EventArgs e)
        {
            return new RedirectResult("Default.aspx");
        }
    }
}