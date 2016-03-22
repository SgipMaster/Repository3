using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UCMP_FooterHost : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		//check to see what item in radio button list was selected
		//set the format of label inthe footer accodingly
		if (RadioButtonList1.SelectedValue == "Long Date")
			Footer.ChosenFormat = UCMP_Footer.FooterFormat.LongDate;
		else if (RadioButtonList1.SelectedValue == "Short Time")
			Footer.ChosenFormat = UCMP_Footer.FooterFormat.ShortTime;
	}
}