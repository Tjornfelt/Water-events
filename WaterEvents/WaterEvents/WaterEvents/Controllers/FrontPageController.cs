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
using Umbraco.Core.Services;
using WaterEvents.Classes.Mappers;

namespace WaterEvents.Controllers
{
    public class FrontPageController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult FrontPage(RenderModel renderModel)
        {
            FrontPageModel model = new FrontPageModel()
            {
                Header = CurrentPage.GetPropertyValue(DocTypes.FrontPage.Header),
                BodyText = CurrentPage.GetPropertyValue(DocTypes.FrontPage.BodyText),
                Slides = GetAndMapSlides(),
                FacebookURL = CurrentPage.GetPropertyValue(DocTypes.FrontPage.FacebookLink)
            };

            return View(model);
        }

        private IEnumerable<Image> GetAndMapSlides()
        {
            var slideFolder = CurrentPage.GetPropertyValue(DocTypes.FrontPage.SlideshowFolder);

            if(slideFolder != null)
            {
                var images = slideFolder.Children.Where(x => x.DocumentTypeAlias == "Image");

                if (images != null && images.Any())
                {
                    foreach (var image in slideFolder.Children.Where(x => x.DocumentTypeAlias == "Image"))
	                {
                        yield return ImageMapper.Map<Image>(image);
	                }
                }
            }
        }
    }
}