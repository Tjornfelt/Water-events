using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WaterEvents.Models.HelperModels;

namespace WaterEvents.Models
{
    public class ContactPageModel
    {
        public string Header { get; set; }
        public IHtmlString BodyText { get; set; }
        public ContactFormModel ContactForm { get; set; }
    }
}