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
    
    public partial class usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public usuario()
        {
            this.anuncios = new HashSet<anuncio>();
            this.denuncias = new HashSet<denuncia>();
            this.preferencias = new HashSet<preferencia>();
            this.chat_master = new HashSet<chat_master>();
            this.chat_master1 = new HashSet<chat_master>();
        }
    
        public int Usuario_id { get; set; }
        public string Nome { get; set; }
        public string CPF_CNPJ { get; set; }
        public int Cidade_id { get; set; }
        public System.DateTime Data_Cadastro { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public string telefone { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<anuncio> anuncios { get; set; }
        public virtual cidade cidade { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<denuncia> denuncias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<preferencia> preferencias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chat_master> chat_master { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chat_master> chat_master1 { get; set; }
    }
}
