using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Mvc;
using Umbraco.Web.Models;
using Umbraco.Web;
using Umbraco.Core.Models;
using WaterEvents.Models.HelperModels;
using PostmarkDotNet;
using System.Net.Mail;
using WaterEvents.Classes.Cms;

namespace WaterEvents.Controllers.SurfaceControllers
{
    public class FormsSurfaceController : SurfaceController
    {
        public JsonResult ContactFormSubmit(ContactFormModel form, string ID)
        {
            var currentNode = Umbraco.TypedContent(ID);
            string template = currentNode.GetPropertyValue(DocTypes.Contactpage.EmailTemplate).ToHtmlString();


            string from = currentNode.GetPropertyValue(DocTypes.Contactpage.From); //from is also the form administrator
            string to = form.Email;
            MailMessage mailUser = new MailMessage(from, form.Email);
            MailMessage mailAdmin = new MailMessage(form.Email, to);

            mailUser.Subject = currentNode.GetPropertyValue(DocTypes.Contactpage.Subject);
            mailAdmin.Subject = currentNode.GetPropertyValue(DocTypes.Contactpage.Subject);
            mailUser.IsBodyHtml = true;
            mailAdmin.IsBodyHtml = true;
            

            var replacedTemplate = template.Replace("##name##", form.Name);
            replacedTemplate = replacedTemplate.Replace("##email##", form.Email);
            replacedTemplate = replacedTemplate.Replace("##phone##", form.Phone);
            replacedTemplate = replacedTemplate.Replace("##address##", form.Address);
            replacedTemplate = replacedTemplate.Replace("##postalcity##", form.PostalCity);
            replacedTemplate = replacedTemplate.Replace("##typewaterballs##", (form.Waterballs == true? "Waterballs":string.Empty));
            replacedTemplate = replacedTemplate.Replace("##typelandballs##", (form.Landballs == true? "Landballs":string.Empty));
            replacedTemplate = replacedTemplate.Replace("##participants##", form.Participants.ToString());
            replacedTemplate = replacedTemplate.Replace("##location##", form.Location);
            replacedTemplate = replacedTemplate.Replace("##dateday##", form.DateDay);
            replacedTemplate = replacedTemplate.Replace("##datehour##", form.DateHour);
            replacedTemplate = replacedTemplate.Replace("##message##", form.Message);

            mailUser.Body = replacedTemplate;
            mailAdmin.Body = replacedTemplate;

            SmtpClient client = new SmtpClient();

            client.Send(mailUser);
            client.Send(mailAdmin);
            return Json(null);
        }
    }
}