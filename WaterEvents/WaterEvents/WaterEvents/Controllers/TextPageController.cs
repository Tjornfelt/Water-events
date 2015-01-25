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
    public class TextPageController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult TextPage(RenderModel renderModel)
        {
            TextPageModel model = new TextPageModel()
            {
                Header = "Overskrift",
                BodyText = new HtmlString("Brødtekst")
            };

            return View(model);
        }
    }
}