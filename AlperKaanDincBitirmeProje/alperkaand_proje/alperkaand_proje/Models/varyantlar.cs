//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace alperkaand_proje.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class varyantlar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public varyantlar()
        {
            this.ilan_goster = new HashSet<ilan_goster>();
        }
    
        public int tas_model_id { get; set; }
        public int varyant_no { get; set; }
        public string varyant_ad { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ilan_goster> ilan_goster { get; set; }
        public virtual tasit_modelleri tasit_modelleri { get; set; }
    }
}
