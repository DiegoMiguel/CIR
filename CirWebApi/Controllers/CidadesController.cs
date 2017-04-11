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
    [RoutePrefix("api/Cidades")]
    public class CidadesController : ApiController
    {
        private CIREntities db = new CIREntities();

        // GET: api/Cidades
        /// <summary>
        /// Não implementado!
        /// </summary>
        /// <returns></returns>
        public IQueryable<cidade> Getcidades()
        {
            return db.cidades;
        }

        // GET: api/Cidades/Estados
        /// <summary>
        /// Obter lista ordenada dos estados brasileiros
        /// </summary>
        /// <returns>Lista de Strings com todos os estados</returns>
        [Route("Estados")]
        public List<string> GetEstados()
        {
            var listaDeEstados = db.cidades.Select(cidade => cidade.UF).Distinct().ToList();
            listaDeEstados.Sort();

            return listaDeEstados;
        }

        // GET: api/cidades/CidadesPorEstado/{UF}
        /// <summary>
        /// Obter lista das cidades de um determinado estado
        /// </summary>
        /// <param name="UF">Sigla do estado de interesse</param>
        /// <returns>Lista contendo objetos com os atributos: Cidade_id, Nome_cidade</returns>
        [HttpGet, Route("CidadesPorEstado/{uf}")]
        public object CidadesPorEstado(string UF)
        {
            var listaDeCidades = db.cidades.Where(cidade => cidade.UF.Equals(UF)).
                Select(cidade => new {cidade.Cidade_id, cidade.Cidade1}).OrderBy(cidade => cidade.Cidade_id).ToList();

            return listaDeCidades;
        }

        // GET: api/Cidades/5
        /// <summary>
        /// Não implementado!
        /// </summary>
        /// <returns></returns>
        [ResponseType(typeof(cidade))]
        public async Task<IHttpActionResult> Getcidade(int id)
        {
            cidade cidade = await db.cidades.FindAsync(id);
            if (cidade == null)
            {
                return NotFound();
            }

            return Ok(cidade);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}