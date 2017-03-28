using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Net.Http;

namespace CirWebView.Controllers
{
    class CidadesController
    {
        public CidadesController()
        {

        }

        internal IEnumerable<string> getEstados()
        {
            using (var client = new HttpClient())
            {
                // Config client
                client.BaseAddress = new Uri("http://cirapi.azurewebsites.net/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage responseMessage;
                try
                {
                    //envia requisicao e recebe resposta do tipo HttpResponseMessage
                    responseMessage = client.GetAsync(client.BaseAddress + "/api/cidades/estados").Result;
                    var responseJson = responseMessage.Content.ReadAsStringAsync(); // Serializa resposta em string

                    return JsonConvert.DeserializeObject<List<string>>(responseJson.Result);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        internal DataTable getCidades(string UF)
        {
            using (var client = new HttpClient())
            {
                // Config client
                client.BaseAddress = new Uri("http://cirapi.azurewebsites.net/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage responseMessage;
                try
                {
                    //envia requisicao e recebe resposta do tipo HttpResponseMessage
                    responseMessage = client.GetAsync(client.BaseAddress + "/api/cidades/CidadesPorEstado/" + UF).Result;
                    var responseJson = responseMessage.Content.ReadAsStringAsync(); // Serializa resposta em string

                    return JsonConvert.DeserializeObject<DataTable>(responseJson.Result);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
}