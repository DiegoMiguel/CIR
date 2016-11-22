using Microsoft.AspNet.Identity.EntityFramework;

namespace CirWebApi.Models
{
    /**
     * Fornece o controle sobre as propriedades das tabelas contidas no sql server aninhadas
     * com o Identity
     * */
    class ContextoDeAutenticacao : IdentityDbContext<IdentityUser>
    {
        public ContextoDeAutenticacao()
            : base("ContextoDeAutenticacao")
        {

        }
    }
}