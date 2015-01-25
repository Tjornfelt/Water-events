using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Mvc;
using Umbraco.Web;
using WaterEvents.Models;
using WaterEvents.Classes.Cms;

namespace WaterEvents.Controllers
{
    public class MasterController : RenderMvcController
    {
        protected override ViewResult View(string viewName, string masterName, object model)
        {

            ViewBag.Global = new GlobalModel
            {
                CarouselActive = CurrentPage.IsDocumentType(DocTypes.FrontPage)
            };

            //Move all "Global content" into the viewbag - it shouldnt be accessible in the model

            var frontPage = CurrentPage.AncestorOrSelf(1);

            return base.View(viewName, masterName, model);
        }
    }
}