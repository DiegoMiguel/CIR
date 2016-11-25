using CirWebApi.Models;
using Microsoft.AspNet.Identity;
using System.Threading.Tasks;
using System.Web.Http;

namespace CirWebApi.Controllers
{
    [RoutePrefix("api/Contas")]
    public class ContasController : ApiController
    {
        private RepositorioDeAutenticacao _repositorio = null;

        public ContasController()
        {
            _repositorio = new RepositorioDeAutenticacao();
        }

        // POST api/Contas/Registrar
        [AllowAnonymous]
        [Route("Registrar")]
        public async Task<IHttpActionResult> Registrar(UsuarioBase novoUsuario)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            IdentityResult result = await _repositorio.RegistrarUsuario(novoUsuario);

            IHttpActionResult errorResult = GetErrorResult(result);

            if (errorResult != null)
            {
                return errorResult;
            }

            return Ok();
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _repositorio.Dispose();
            }

            base.Dispose(disposing);
        }

        /**
         * The “GetErrorResult” method is just a helper method which is used to validate the “UserModel”
         * and return the correct HTTP status code if the input data is invalid.
         * */
        private IHttpActionResult GetErrorResult(IdentityResult result)
        {
            if (result == null)
            {
                return InternalServerError();
            }

            if (!result.Succeeded)
            {
                if (result.Errors != null)
                {
                    foreach (string error in result.Errors)
                    {
                        ModelState.AddModelError("", error);
                    }
                }

                if (ModelState.IsValid)
                {
                    // No ModelState errors are available to send, so just return an empty BadRequest.
                    return BadRequest();
                }

                return BadRequest(ModelState);
            }

            return null;
        }
    }
}
