using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WaterEvents.Models.HelperModels
{
    public class EventModel
    {
        public string Header { get; set; }
        public Image Image { get; set; }
        public IHtmlString BodyText { get; set; }
    }
}