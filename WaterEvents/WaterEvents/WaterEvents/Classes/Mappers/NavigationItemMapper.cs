using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WaterEvents.Models.HelperModels;
using Umbraco.Web;
using Umbraco.Core.Models;

namespace WaterEvents.Classes.Mappers
{
    public static class NavigationItemMapper
    {
        /// <summary>
        /// Returns a collection of NavigationItems starting from the root. Currentpage helps to determine if the current navigation item is active.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="content"></param>
        /// <returns></returns>
        public static IEnumerable<T> Map<T>(IPublishedContent root, IPublishedContent currentPage) where T: NavigationItem
        {
            List<T> navigationItems = new List<T>();
            if (root != null)
            {
                foreach (var child in root.Children)
                {
                    NavigationItem navItem = new NavigationItem() {
                        Name = child.Name,
                        Url = child.Url,
                        Active = currentPage.Id == child.Id,
                        Children = Map<NavigationItem>(child, currentPage)
                    };
                    navigationItems.Add((T)navItem);
                }
            }

            if (navigationItems.Any())
            {
                return navigationItems;
            }
            return null;
        }

        /*
        /// <summary>
        /// Returns a single NavigationItem mapped from the node provided.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="content"></param>
        /// <returns></returns>
        public static T MapSingle<T>(IPublishedContent content) where T : NavigationItem
        {
            if (content != null)
            {
                NavigationItem navItem = new NavigationItem{
                    Name = content.Name,
                    Url = content.Url
                };
                return (T)navItem;
            }
            return null;
        }
         */
    }
}