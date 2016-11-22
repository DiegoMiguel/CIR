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
    public class AnunciosController : ApiController
    {
        private CIREntities db = new CIREntities();

        // GET: api/Anuncios
        public IQueryable<anuncio> Getanuncios()
        {
            return db.anuncios;
        }

        // GET: api/Anuncios/5
        [ResponseType(typeof(anuncio))]
        public async Task<IHttpActionResult> Getanuncio(int id)
        {
            anuncio anuncio = await db.anuncios.FindAsync(id);
            if (anuncio == null)
            {
                return NotFound();
            }

            return Ok(anuncio);
        }

        // PUT: api/Anuncios/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> Putanuncio(int id, anuncio anuncio)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != anuncio.Anuncio_id)
            {
                return BadRequest();
            }

            db.Entry(anuncio).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!anuncioExists(id))
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

        // POST: api/Anuncios
        [ResponseType(typeof(anuncio))]
        public async Task<IHttpActionResult> Postanuncio(anuncio anuncio)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.anuncios.Add(anuncio);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = anuncio.Anuncio_id }, anuncio);
        }

        // DELETE: api/Anuncios/5
        [ResponseType(typeof(anuncio))]
        public async Task<IHttpActionResult> Deleteanuncio(int id)
        {
            anuncio anuncio = await db.anuncios.FindAsync(id);
            if (anuncio == null)
            {
                return NotFound();
            }

            db.anuncios.Remove(anuncio);
            await db.SaveChangesAsync();

            return Ok(anuncio);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool anuncioExists(int id)
        {
            return db.anuncios.Count(e => e.Anuncio_id == id) > 0;
        }
    }
}