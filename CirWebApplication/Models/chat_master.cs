//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CirWebApplication.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class chat_master
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public chat_master()
        {
            this.chat_detalhe = new HashSet<chat_detalhe>();
        }
    
        public int Chat_Master_id { get; set; }
        public int Usuario_id_Anuncio { get; set; }
        public int Anuncio_id { get; set; }
        public int Usuario_Chat { get; set; }
    
        public virtual anuncio anuncio { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chat_detalhe> chat_detalhe { get; set; }
        public virtual usuario usuario { get; set; }
        public virtual usuario usuario1 { get; set; }
    }
}
