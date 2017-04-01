using CirWebApi.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security.OAuth;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.Owin.Security;
using CirWebApi.Controllers;
using Newtonsoft.Json;

namespace CirWebApi.Providers
{
    /**
     * Verifica se as informações do usuário e senha são válidas para fornecer um token de acesso.
     * */
    class ProviderDeTokensDeAcesso : OAuthAuthorizationServerProvider
    {
        /**
         * Responsável por fazer validações extras quando o usuário se autentica com o token de acesso
         * */
        public override async Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context)
        {
            context.Validated();
        }

        /**
         * Responsável por fornecer o token de acesso com base no usuário(email) e senha.
         * */
        public override async Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context)
        {

            context.OwinContext.Response.Headers.Add("Access-Control-Allow-Origin", new[] { "*" });

            using (RepositorioDeAutenticacao _repo = new RepositorioDeAutenticacao())
            {
                IdentityUser user = await _repo.FindUser(context.UserName, context.Password);

                if (user == null)
                {
                    context.SetError("invalid_grant", "Usuario ou senha incorretos!");
                    return;
                }
            }

            var identity = new ClaimsIdentity(context.Options.AuthenticationType);
            identity.AddClaim(new Claim("sub", context.UserName));  //(subject): Representa o nome de usuário para qual o Token foi expedido
            identity.AddClaim(new Claim("role", "usuario"));   //Representa em quais perfis o usuário se encontra

            context.Validated(identity); // Linha que valida e envia o token de acesso para a sessão em questão
        }

        /// <summary>
        /// Este método adiciona parametros à resposta default da requisição por token
        /// </summary>
        /// <param name="context">
        /// Representa resposta à requisição em atividade
        /// </param>
        /// <returns></returns>
        public override Task TokenEndpoint(OAuthTokenEndpointContext context)
        {
            string emailUsuario = context.Identity.FindFirst("sub").Value;
            UsuarioModel usuario = new UsuariosController().GetUsuario(emailUsuario);

            context.AdditionalResponseParameters.Add("usuario_id", usuario.ID);
            context.AdditionalResponseParameters.Add("usuario_nome", usuario.NOME);
            context.AdditionalResponseParameters.Add("usuario_cidadeId", usuario.CIDADE_ID);
            context.AdditionalResponseParameters.Add("validade", context.Properties.ExpiresUtc.ToString());

            return Task.FromResult<object>(null);
        } 

    }
}