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
    
    public partial class TrainningsByPP
    {
        public long TrainningId { get; set; }
        public long PPId { get; set; }
        public Nullable<float> AsistancePorcentage { get; set; }
        public Nullable<bool> Certified { get; set; }
    
        public virtual PerformanceProfile PerformanceProfile { get; set; }
        public virtual Trainnings Trainnings { get; set; }
    }
}
