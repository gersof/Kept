﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KeptWeb.Models
{
	public class AssessmentQuestions
	{
		public long CAndPId { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public bool IsCompetency { get; set; }
		public IList<AssessmentTestQuestions> AssessmentTestsQuestions { get; set; }
	}
}