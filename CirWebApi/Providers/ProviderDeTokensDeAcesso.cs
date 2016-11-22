using CirWebApi.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security.OAuth;
using System.Security.Claims;
using System.Threading.Tasks;

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

            context.Validated(identity);
        }
    }
}