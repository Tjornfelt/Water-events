﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:v4.0.30319
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//---
using System;
using APE.Umbraco;
namespace WaterEvents.Classes.Cms
{
    public partial class Contactpage : Master
    {

		public Contactpage(): base()		
		{
			this.Header = new StringProperty(){ Alias = "header" };
			this.BodyText = new HtmlStringProperty(){ Alias = "bodyText" };
			this.From = new StringProperty(){ Alias = "from" };
			this.To = new StringProperty(){ Alias = "to" };
			this.Thanks = new StringProperty(){ Alias = "thanks" };
			this.EmailTemplate = new HtmlStringProperty(){ Alias = "emailTemplate" };
			this.Subject = new StringProperty(){ Alias = "subject" };
				
		}

		[Obsolete("Use the implicit operator... Just remove the .DocTypeAlias")]
		new public readonly string DocTypeAlias = "Contactpage";

		public static implicit operator string(Contactpage doctype)
		{
			return "Contactpage";
		}
	 		
				
		/// <summary>
		///		<para>Datatype: Textstring</para>
		/// </summary>
		public StringProperty Header { get; private set; }		
				
		/// <summary>
		///		<para>Datatype: Richtext editor</para>
		/// </summary>
		public HtmlStringProperty BodyText { get; private set; }		
				
		/// <summary>
		///		<para>Datatype: Textstring</para>
		///		<para>Description: Indtast fra adressen. Denne adresse skal være en confirmed sender signature, konfigureret i postmark. Hvis du ikke er helt sikker på hvad dette er, så PIL IKKE VED DETTE FELT :-)</para>
		/// </summary>
		public StringProperty From { get; private set; }		
				
		/// <summary>
		///		<para>Datatype: Textstring</para>
		///		<para>Description: Adressen der modtager henvendelser via formularen. Vær obs på, at brugeren af formularen også får en kopi af beskeden, som en ekstra bekræftelse på at de rigtige værdier er indtastet.</para>
		/// </summary>
		public StringProperty To { get; private set; }		
				
		/// <summary>
		///		<para>Datatype: Textbox multiple</para>
		///		<para>Description: Takke teksten der bliver vist på siden når formularen er afsendt.</para>
		/// </summary>
		public StringProperty Thanks { get; private set; }		
				
		/// <summary>
		///		<para>Datatype: Richtext editor</para>
		///		<para>Description: Dette er beskeden i selve emailen der bliver afsendt. Brug følgende replace-værdier til at flette brugerens indtastede data ind i mailen:  ##name## ##email## ##phone## ##address## ##postalcity## ##typewaterballs## ##typelandballs## ##participants## ##location## ##dateday## ##datehour## ##message## </para>
		/// </summary>
		public HtmlStringProperty EmailTemplate { get; private set; }		
				
		/// <summary>
		///		<para>Datatype: Textstring</para>
		/// </summary>
		public StringProperty Subject { get; private set; }
	}
}
