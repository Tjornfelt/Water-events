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
    public class TextPageController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult TextPage(RenderModel renderModel)
        {
            TextPageModel model = new TextPageModel()
            {
                Header = CurrentPage.GetPropertyValue(DocTypes.Textpage.Header),
                BodyText = CurrentPage.GetPropertyValue(DocTypes.Textpage.BodyText)
            };

            return View(model);
        }
    }
}