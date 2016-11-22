using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Threading.Tasks;

namespace CirWebApi.Models
{
    /**
     * Promove registro e procura de usuarios
     * “UserManager” provides the domain logic for working with user information.
     * The “UserManager” knows when to hash a password, how and when to validate a user, and how to manage claims.
     * */
    class RepositorioDeAutenticacao : IDisposable
    {
        private ContextoDeAutenticacao _contexto;
        private UserManager<IdentityUser> _gerenciaDeUser;

        public RepositorioDeAutenticacao()
        {
            _contexto = new ContextoDeAutenticacao();
            _gerenciaDeUser = new UserManager<IdentityUser>(new UserStore<IdentityUser>(_contexto));
        }

        public async Task<IdentityResult> RegistrarUsuario(UsuarioBase novoUsuario)
        {
            IdentityUser usuario = new IdentityUser
            {
                UserName = novoUsuario.EMAIL
            };

            var result = await _gerenciaDeUser.CreateAsync(usuario, novoUsuario.SENHA);

            return result;
        }
        public async Task<IdentityUser> FindUser(string email, string password)
        {
            IdentityUser user = await _gerenciaDeUser.FindAsync(email, password);

            if (user != null)
            {
                return user;
            }

            return null;
        }
        public void Dispose()
        {
            _contexto.Dispose();
            _gerenciaDeUser.Dispose();
        }
    }
}