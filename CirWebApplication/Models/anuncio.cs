//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CIRApresentacao.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class anuncio
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public anuncio()
        {
            this.denuncias = new HashSet<denuncia>();
        }
    
        public int Anuncio_id { get; set; }
        public int Usuario_id { get; set; }
        public System.DateTime Data { get; set; }
        public string Descricao { get; set; }
        public int Tipo_Categoria { get; set; }
        public string Imagem { get; set; }
        public int Categoria_Produto_id { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<denuncia> denuncias { get; set; }
        public virtual categoria categoria { get; set; }
        public virtual usuario usuario { get; set; }
    }
}
