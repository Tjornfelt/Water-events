using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WaterEvents.Models.HelperModels
{
    public class LocationRegion
    {
        public string Name { get; set; }
        public IEnumerable<Location> Locations { get; set; }
    }
}