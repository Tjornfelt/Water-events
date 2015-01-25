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
    public class FrontPageController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult FrontPage(RenderModel renderModel)
        {
            TestModel model = new TestModel()
            {
                Test = "asd"
            };

            return View(model);
        }
    }
}