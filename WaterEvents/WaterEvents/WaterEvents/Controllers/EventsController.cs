using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Models;
using Umbraco.Web;
using Umbraco.Core.Models;
using WaterEvents.Models;
using WaterEvents.Classes.Mappers;
using WaterEvents.Models.HelperModels;
using WaterEvents.Classes.Cms;

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
                Header = CurrentPage.GetPropertyValue(DocTypes.Events.Header),
                BodyText = CurrentPage.GetPropertyValue(DocTypes.Events.BodyText),
                SubMenu = NavigationItemMapper.Map<NavigationItem>(CurrentPage,CurrentPage),
                Events = GetEvents()
            };

            return View(model);
        }

        private IEnumerable<EventModel> GetEvents()
        {
            var events = CurrentPage.Children.Where(x => x.DocumentTypeAlias == DocTypes.Event);
        
            if(events != null && events.Any())
            {
                foreach (var ev in events)
	            {
                    yield return new EventModel()
                    {
                        Header = ev.GetPropertyValue(DocTypes.Event.Header),
                        BodyText = ev.GetPropertyValue(DocTypes.Event.BodyText),
                        Image = ImageMapper.Map<Image>(ev.GetPropertyValue(DocTypes.Event.Image))
                    };
	            }
            }
        }
    }
}