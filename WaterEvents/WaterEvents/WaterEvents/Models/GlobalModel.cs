using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WaterEvents.Models.HelperModels;

namespace WaterEvents.Models
{
    public class GlobalModel
    {
        public bool CarouselActive { get; set; }
        public IEnumerable<NavigationItem> MainMenu { get; set; }
        public string SeoTitle { get; set; }
        public string SeoDescription { get; set; }
    }
}