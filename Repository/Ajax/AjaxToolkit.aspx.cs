using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ajax_AjaxToolkit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		Label1.Text = "<h6>" + DateTime.Now.ToLongTimeString() + "</h6>";
	}

	protected void Timer1_Tick(object sender, EventArgs e)
	{
		Label1.Text = "<h6>" + DateTime.Now.ToLongTimeString() + "</h6>";
	}
}