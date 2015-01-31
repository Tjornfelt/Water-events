using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WaterEvents.Models.HelperModels
{
    public class ContactFormModel
    {
        public string ID { get; set; }

        [Required(ErrorMessage="Feltet må ikke være tomt")]
        [Display(Name = "Indtast navn*")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Feltet må ikke være tomt")]
        [EmailAddress(ErrorMessage="Din e-mail adresse er i et forkert format")]
        [Display(Name = "E-mail adresse*")]
        public string Email { get; set; }

        [Display(Name = "Telefon nr.")]
        public string Phone { get; set; }

        [Display(Name = "Adresse")]
        public string Address { get; set; }

        [Display(Name = "Postnr/By")]
        public string PostalCity { get; set; }

        [Display(Name = "Waterballs")]
        public bool  Waterballs { get; set; }

        [Display(Name = "Landballs")]
        public bool Landballs { get; set; }

        [Display(Name = "Antal deltagere")]
        public int Participants { get; set; }

        [Display(Name = "Lokation/sted for afholdelse af arragement")]
        public string Location { get; set; }

        [Display(Name = "Ønsket dato")]
        public string DateDay { get; set; }

        [Display(Name = "Tid på dagen (uddyb gerne hvor fleksible i er, hvis den ønskede tid er optaget)")]
        public string DateHour { get; set; }

        [Required(ErrorMessage = "Feltet må ikke være tomt")]
        [Display(Name = "Besked*")]
        public string Message { get; set; }

    }
}