using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Models;
using Umbraco.Web;
using Umbraco.Core.Models;
using WaterEvents.Models;

namespace WaterEvents.Controllers
{
    public class EventsController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult Events(RenderModel renderModel)
        {
            EventsModel model = new EventsModel()
            {
                Header = "Overskrift",
                BodyText = new HtmlString("Brødtekst")
            };

            return View(model);
        }
    }
}