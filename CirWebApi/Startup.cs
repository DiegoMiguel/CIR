using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Owin;
using Owin;
using System.Web.Http;
using Microsoft.Owin.Security.OAuth;
using Microsoft.Owin.Cors;
using CirWebApi.Providers;

[assembly: OwinStartup(typeof(CirWebApi.Startup))]
namespace CirWebApi
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            HttpConfiguration config = new HttpConfiguration();

            AtivarAcessToken(app);

            WebApiConfig.Register(config);

            // Ativa cors
            app.UseCors(CorsOptions.AllowAll);

            // Ativando configuracao da WebApi
            app.UseWebApi(config);
        }

        private void AtivarAcessToken(IAppBuilder app)
        {
            var opcoesConfiguracaoToken = new OAuthAuthorizationServerOptions()
            {
                AllowInsecureHttp = true,   // Permitindo acesso ao endereço de fornecimento do token de acesso sem precisar de HTTPS.
                                            //Obviamente, num ambiente de produção, o valor deve ser false.
                TokenEndpointPath = new PathString("/token"), // endereço do fornecimento do token de acesso
                AccessTokenExpireTimeSpan = TimeSpan.FromHours(2),   //por quanto tempo um token de acesso já forncedido valerá (2hrs)
                Provider = new ProviderDeTokensDeAcesso()
            };

            // ativa o uso de tokens no projeto
            app.UseOAuthAuthorizationServer(opcoesConfiguracaoToken);
            app.UseOAuthBearerAuthentication(new OAuthBearerAuthenticationOptions());
        }
    }
}
