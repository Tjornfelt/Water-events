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
using WaterEvents.Models.HelperModels;

namespace WaterEvents.Controllers
{
    public class ContactPageController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult ContactPage(RenderModel renderModel)
        {
            ContactPageModel model = new ContactPageModel()
            {
                Header = CurrentPage.GetPropertyValue(DocTypes.Contactpage.Header),
                BodyText = CurrentPage.GetPropertyValue(DocTypes.Contactpage.BodyText),
                ContactForm = new ContactFormModel()
            };
            model.ContactForm.ID = CurrentPage.Id.ToString();
            return View(model);
        }
    }
}