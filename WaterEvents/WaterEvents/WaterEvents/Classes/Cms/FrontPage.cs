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
    public partial class FrontPage : Master
    {

		public FrontPage(): base()		
		{
			this.SlideshowFolder = new MediaProperty(){ Alias = "slideshowFolder" };
			this.Header = new StringProperty(){ Alias = "header" };
			this.BodyText = new HtmlStringProperty(){ Alias = "bodyText" };
				
		}

		[Obsolete("Use the implicit operator... Just remove the .DocTypeAlias")]
		new public readonly string DocTypeAlias = "FrontPage";

		public static implicit operator string(FrontPage doctype)
		{
			return "FrontPage";
		}
	 		
				
		/// <summary>
		///		<para>Datatype: Media Picker</para>
		///		<para>Description: Vælg mappen der indeholder slides.</para>
		/// </summary>
		public MediaProperty SlideshowFolder { get; private set; }		
				
		/// <summary>
		///		<para>Datatype: Textstring</para>
		/// </summary>
		public StringProperty Header { get; private set; }		
				
		/// <summary>
		///		<para>Datatype: Richtext editor</para>
		/// </summary>
		public HtmlStringProperty BodyText { get; private set; }
	}
}
