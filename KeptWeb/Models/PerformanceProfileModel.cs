using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KeptWeb.Models
{
    public class PerformanceProfileModel
    {
        public Employee Employee { get; set; }
        public PerformanceProfile Profile { get; set; }
        public IEnumerable<CompetencyAndPerformance> Competencies { get; set; }
        public IEnumerable<CompetencyAndPerformance> Performance { get; set; }
    }
}