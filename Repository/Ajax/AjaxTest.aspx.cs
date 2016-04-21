using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ajax_AjaxTest : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		Label1.Text = DateTime.Now.ToLongTimeString();
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		System.Threading.Thread.Sleep(2000);

		Label2.Text = DateTime.Now.ToLongTimeString();
		Label1.Text = DateTime.Now.ToLongTimeString();
		Label3.Text = DateTime.Now.ToLongTimeString();
	}
}