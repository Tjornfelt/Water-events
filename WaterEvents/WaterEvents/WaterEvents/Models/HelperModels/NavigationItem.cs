using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WaterEvents.Models.HelperModels
{
    public class NavigationItem
    {
        public string Name { get; set; }
        public string Url { get; set; }
        public bool Active { get; set; }
        public IEnumerable<NavigationItem> Children { get; set; }
    }
}