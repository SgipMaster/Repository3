using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ValidateMe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		this.DataBind();

		CompareValidator2.ValueToCompare = txtPasswd1.Text;
    }


	protected void lstDisplay_SelectedIndexChanged(object sender, EventArgs e)
	{
		//based on user selection change whether the Validation summery controls displays the error messages
		//in summery for or in a message box
		if (lstDisplay.SelectedIndex == 0)
		{
			ValidationSummary1.ShowSummary = ValidationSummary2.ShowSummary = true;
			ValidationSummary1.ShowMessageBox = ValidationSummary2.ShowMessageBox = false;
		}
		else if (lstDisplay.SelectedIndex == 1)
		{
			ValidationSummary1.ShowSummary = ValidationSummary2.ShowSummary = false;
			ValidationSummary1.ShowMessageBox = ValidationSummary2.ShowMessageBox = true;
		}

	}

	protected void lstFormat_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (lstFormat.SelectedIndex == 0)
			ValidationSummary1.DisplayMode = ValidationSummary2.DisplayMode = ValidationSummaryDisplayMode.List;
		else if (lstFormat.SelectedIndex == 1)
			ValidationSummary1.DisplayMode = ValidationSummary2.DisplayMode = ValidationSummaryDisplayMode.BulletList;
		else if (lstFormat.SelectedIndex == 2)
			ValidationSummary1.DisplayMode = ValidationSummary2.DisplayMode = ValidationSummaryDisplayMode.SingleParagraph;
		
	}
}