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

namespace CirWebApi.Controllers
{
    public class DenunciasController : ApiController
    {
        private CIREntities db = new CIREntities();

        // GET: api/Denuncias
        public IQueryable<denuncia> Getdenuncias()
        {
            return db.denuncias;
        }

        // GET: api/Denuncias/5
        [ResponseType(typeof(denuncia))]
        public async Task<IHttpActionResult> Getdenuncia(int id)
        {
            denuncia denuncia = await db.denuncias.FindAsync(id);
            if (denuncia == null)
            {
                return NotFound();
            }

            return Ok(denuncia);
        }

        // PUT: api/Denuncias/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> Putdenuncia(int id, denuncia denuncia)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != denuncia.Denuncia_id)
            {
                return BadRequest();
            }

            db.Entry(denuncia).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!denunciaExists(id))
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

        // POST: api/Denuncias
        [ResponseType(typeof(denuncia))]
        public async Task<IHttpActionResult> Postdenuncia(denuncia denuncia)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.denuncias.Add(denuncia);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = denuncia.Denuncia_id }, denuncia);
        }

        // DELETE: api/Denuncias/5
        [ResponseType(typeof(denuncia))]
        public async Task<IHttpActionResult> Deletedenuncia(int id)
        {
            denuncia denuncia = await db.denuncias.FindAsync(id);
            if (denuncia == null)
            {
                return NotFound();
            }

            db.denuncias.Remove(denuncia);
            await db.SaveChangesAsync();

            return Ok(denuncia);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool denunciaExists(int id)
        {
            return db.denuncias.Count(e => e.Denuncia_id == id) > 0;
        }
    }
}