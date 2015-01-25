using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Mvc;
using Umbraco.Web;

namespace WaterEvents.Controllers
{
    public class MasterController : RenderMvcController
    {
        protected override ViewResult View(string viewName, string masterName, object model)
        {

            //Move all "Global content" into the viewbag - it shouldnt be accessible in the model

            var frontPage = CurrentPage.AncestorOrSelf(1);

            return base.View(viewName, masterName, model);
        }
    }
}