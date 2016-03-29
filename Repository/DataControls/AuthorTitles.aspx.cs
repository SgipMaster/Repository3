using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataControls_AuthorTitles : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}



	protected void gvwAuthors_RowDataBound(object sender, GridViewRowEventArgs e)
	{
		//make sure row being bound is async data row not a title row
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			//if title count is greater than one change row to yellow
			//use DataBinder.Eval method to retrieve the value of titlecount
			int count = (int)DataBinder.Eval(e.Row.DataItem, "titlecount");
			if (count > 1)
				e.Row.BackColor = System.Drawing.Color.Yellow;
		}

	}

	protected void LinkButton2_Click(object sender, EventArgs e)
	{
		//make dv visiable and gv invisible
		dvwInsertAuthor.Visible = true;
		gvwAuthors.Visible = false;
		btnAuthorInsert.Visible = false;
	}



	protected void dvwInsertAuthor_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
	{
		dvwInsertAuthor.Visible = false;
		gvwAuthors.Visible = true;
		btnAuthorInsert.Visible = true;

		gvwAuthors.DataBind();
	}

	protected void dvwInsertAuthor_ItemCommand(object sender, DetailsViewCommandEventArgs e)
	{
		if (e.CommandName == "Cancel")
		{
			dvwInsertAuthor.Visible = false;
			gvwAuthors.Visible = true;
			btnAuthorInsert.Visible = true;
		}
	}
}