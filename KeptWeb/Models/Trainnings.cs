//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KeptWeb.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Trainnings
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Trainnings()
        {
            this.TrainningsByPP = new HashSet<TrainningsByPP>();
        }
    
        public long TrainningId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Room { get; set; }
        public int Hours { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainningsByPP> TrainningsByPP { get; set; }
    }
}
