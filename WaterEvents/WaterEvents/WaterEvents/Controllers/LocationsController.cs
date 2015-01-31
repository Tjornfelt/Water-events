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
                PostBodyText = CurrentPage.GetPropertyValue(DocTypes.Locations.PostBodyText),
                LocationRegions = GetLocationRegions()
            };

            return View(model);
        }

        private IEnumerable<LocationRegion> GetLocationRegions()
        {
            var regions = CurrentPage.Children.Where(x => x.DocumentTypeAlias == DocTypes.LocationsRegion);

            if (regions != null && regions.Any())
            {
                foreach (var region in regions)
                {
                    yield return new LocationRegion()
                    {
                        Name = region.Name,
                        Locations = GetLocations(region)
                    };
                }
            }
        }

        private IEnumerable<WaterEvents.Models.HelperModels.Location> GetLocations(IPublishedContent region)
        {
            var locations = region.Children.Where(x => x.DocumentTypeAlias == DocTypes.Location);

            if (locations != null && locations.Any())
            {
                foreach (var location in locations)
                {
                    yield return new WaterEvents.Models.HelperModels.Location()
                    {
                        Address = location.GetPropertyValue(DocTypes.Location.Address),
                        ExternalUrl = location.GetPropertyValue(DocTypes.Location.GoogleMapsLink)
                    };
                }
            }
        }
    }
}