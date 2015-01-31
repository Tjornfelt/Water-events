using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WaterEvents.Models.HelperModels;

namespace WaterEvents.Models
{
    public class LocationsModel
    {
        public string Header { get; set; }
        public IHtmlString BodyText { get; set; }
        public IHtmlString PostBodyText { get; set; }
        public IEnumerable<LocationRegion> LocationRegions { get; set; }
    }
}