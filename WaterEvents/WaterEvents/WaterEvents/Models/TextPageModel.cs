﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WaterEvents.Models
{
    public class TextPageModel
    {
        public string Header { get; set; }
        public IHtmlString BodyText { get; set; }
    }
}