//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KeptWeb.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PerformanceProfile
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PerformanceProfile()
        {
            this.CAndPByPP = new HashSet<CAndPByPP>();
            this.TrainningsByPP = new HashSet<TrainningsByPP>();
            this.Skills = new HashSet<Skills>();
        }
    
        public long PPId { get; set; }
        public long EmployeeCC { get; set; }
        public string PictureURL { get; set; }
        public Nullable<int> TeamScore { get; set; }
        public Nullable<int> ClientScore { get; set; }
        public Nullable<int> ProjectScore { get; set; }
        public Nullable<int> CompanyScore { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CAndPByPP> CAndPByPP { get; set; }
        public virtual Employee Employee { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainningsByPP> TrainningsByPP { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Skills> Skills { get; set; }
    }
}
