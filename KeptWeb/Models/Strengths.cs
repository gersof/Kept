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
    
    public partial class Strengths
    {
        public long StrenghId { get; set; }
        public long CAndPId { get; set; }
        public string Description { get; set; }
        public string EmployeeDocumentId { get; set; }
    
        public virtual CompetencyAndPerformance CompetencyAndPerformance { get; set; }
        public virtual Employee Employee { get; set; }
    }
}
