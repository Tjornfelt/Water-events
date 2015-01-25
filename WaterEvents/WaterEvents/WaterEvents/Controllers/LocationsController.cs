using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Models;
using Umbraco.Web;
using Umbraco.Core.Models;
using WaterEvents.Models;
using WaterEvents.Classes.Cms;

namespace WaterEvents.Controllers
{
    public class LocationsController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult Locations(RenderModel renderModel)
        {
            LocationsModel model = new LocationsModel()
            {
                Header = CurrentPage.GetPropertyValue(DocTypes.Locations.Header),
                BodyText = CurrentPage.GetPropertyValue(DocTypes.Locations.BodyText),
                PostBodyText = CurrentPage.GetPropertyValue(DocTypes.Locations.PostBodyText)
            };

            return View(model);
        }
    }
}