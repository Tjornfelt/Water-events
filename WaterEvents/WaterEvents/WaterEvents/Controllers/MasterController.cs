using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Mvc;
using Umbraco.Web;
using Umbraco.Core.Models;
using WaterEvents.Models;
using WaterEvents.Classes.Cms;
using WaterEvents.Classes.Mappers;
using WaterEvents.Models.HelperModels;


namespace WaterEvents.Controllers
{
    public class MasterController : RenderMvcController
    {
        protected override ViewResult View(string viewName, string masterName, object model)
        {

            IPublishedContent frontPage = CurrentPage.AncestorOrSelf(1);
            ViewBag.Global = new GlobalModel
            {
                CarouselActive = CurrentPage.IsDocumentType(DocTypes.FrontPage),
                MainMenu = NavigationItemMapper.Map<NavigationItem>(frontPage, CurrentPage),
                SeoTitle = CurrentPage.GetPropertyValue(DocTypes.FrontPage.SeoTitle),
                SeoDescription = CurrentPage.GetPropertyValue(DocTypes.FrontPage.SeoDescription)
            };

            //Move all "Global content" into the viewbag - it shouldnt be accessible in the model


            return base.View(viewName, masterName, model);
        }
    }
}