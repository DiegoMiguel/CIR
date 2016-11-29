using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using CirWebApi.Models;
using System.Web.Http.Results;
using System.Web.Http.Controllers;

namespace CirWebApi.Controllers
{
    public class UsuariosController : ApiController
    {
        private CIREntities db = new CIREntities();

        public async Task<IHttpActionResult> Autenticar(string email, string senha)
        {
            UsuarioModel autenticado = db.usuarios
                .Where(u => u.Email.Equals(email) && u.Senha.Equals(senha))
                .Select(u => new UsuarioModel
                {
                    ID = u.Usuario_id,
                    NOME = u.Nome,
                    CPF_CNPJ = u.CPF_CNPJ,
                    CIDADE_ID = u.Cidade_id,
                    EMAIL = u.Email,
                    SENHA = u.Senha
                }).FirstOrDefault();

            return Ok(autenticado);
        }

        // GET: api/Usuarios
        public IQueryable<usuario> Getusuarios()
        {
            return db.usuarios;
        }

        // GET: api/Usuarios/5
        [ResponseType(typeof(usuario))]
        public async Task<IHttpActionResult> Getusuario(int id)
        {
            usuario usuario = await db.usuarios.FindAsync(id);
            if (usuario == null)
            {
                return NotFound();
            }

            return Ok(usuario);
        }

        // PUT: api/Usuarios/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> Putusuario(int id, usuario usuario)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != usuario.Usuario_id)
            {
                return BadRequest();
            }

            db.Entry(usuario).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!usuarioExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Usuarios
        [AllowAnonymous]
        [ResponseType(typeof(int))]
        public async Task<IHttpActionResult> PostUsuario(UsuarioModel usuario, HttpControllerContext contextoDaRequisicao)
        {
            // Como a requisicao é repassada para cá, o UsuariosController reaproveita as configurações recebidas
            // pelo ContasController
            ControllerContext = contextoDaRequisicao;

            int idUsuarioSalvo = db.usuarios.Add(new usuario()
            {
                Nome = usuario.NOME,            // O dbContext cria uma representacao do usuario no banco de dados
                CPF_CNPJ = usuario.CPF_CNPJ,    // aqui, estamos repassando o modelo recebido para esse formato
                Email = usuario.EMAIL,          // que será usado para a persistência
                Cidade_id = usuario.CIDADE_ID
            }).Usuario_id;

            await db.SaveChangesAsync();

            return Ok();
        }

        // DELETE: api/Usuarios/5
        [ResponseType(typeof(usuario))]
        public async Task<IHttpActionResult> Deleteusuario(int id)
        {
            usuario usuario = await db.usuarios.FindAsync(id);
            if (usuario == null)
            {
                return NotFound();
            }

            db.usuarios.Remove(usuario);
            await db.SaveChangesAsync();

            return Ok(usuario);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool usuarioExists(int id)
        {
            return db.usuarios.Count(e => e.Usuario_id == id) > 0;
        }
    }
}