using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WaterEvents.Models.HelperModels;

namespace WaterEvents.Models
{
    public class EventsModel
    {
        public string Header { get; set; }
        public IHtmlString BodyText { get; set; }
        public IEnumerable<EventModel> Events { get; set; }
        public IEnumerable<NavigationItem> SubMenu { get; set; }
    }
}