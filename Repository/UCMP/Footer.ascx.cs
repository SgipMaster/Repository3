using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UCMP_Footer : System.Web.UI.UserControl
{
	//create private member variable that is of type footerFormat
	private FooterFormat chosenformat = FooterFormat.LongDate;
	
	//Create public Property that provides access to chosenformat	
	public FooterFormat ChosenFormat
	{
		get { return chosenformat;  }
		set { chosenformat = value;  }
	}

	protected void Page_Load(object sender, EventArgs e)
	{
		lblFooter.Text = "This page was Served at ";

		if (chosenformat == FooterFormat.LongDate)
			lblFooter.Text += DateTime.Now.ToLongDateString();
		else if (chosenformat == FooterFormat.ShortTime)
			lblFooter.Text += DateTime.Now.ToShortDateString();
	}

	public enum FooterFormat
	{
		LongDate, ShortTime
	}
}
