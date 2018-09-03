using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KeptWeb.Models
{
    public class OOIandAI
    {
        public IEnumerable<OportunitiesOfImprovement> Oportunities { get; set; }
        public IEnumerable<ActionItems> ActionItems { get; set; }

    }
}