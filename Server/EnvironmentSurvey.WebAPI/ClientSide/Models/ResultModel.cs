﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EnvironmentSurvey.WebAPI.ClientSide.Models
{
    public class ResultModel
    {
        public int surveyId { get; set; }
        public string surveyName { get; set; }
        public int point { get; set;  }
    }
}
