using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advanced_Controls_Advanced_Controls : System.Web.UI.Page
{
	private string uploadDirectory;

	protected void Page_Load(object sender, EventArgs e)
	{
		//Place files in a website subfolder named Uploads
		uploadDirectory = Path.Combine(Request.PhysicalApplicationPath, "Advanced_Controls/Uploads");
	}

	protected void Calendar1_SelectionChanged(object sender, EventArgs e)
	{
		//Report selected date in the label
		SelectDatePnl.Text = "You Select " + Calendar1.SelectedDate.ToLongDateString() + ".<br />";

		BirthdayCheck(1, 18, "Nathan");
		BirthdayCheck(7, 12, "Richard");
	}

	protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
	{
		if (e.Day.IsWeekend)
			e.Day.IsSelectable = false;

		//Check if date being rendered is nathan's or richard's birthday
		if (e.Day.Date.Month == 1 && e.Day.Date.Day == 18)
		{
			//add message to calender cell for this day stating it is nathan's birthday
			//Create lable with text for birthday
			Label myLabel = new Label();
			myLabel.Text = "\nHappy Birthday Nathan!";
			e.Cell.Controls.Add(myLabel);
		}

		//repeated for other team members b-day
		if (e.Day.Date.Month == 7 && e.Day.Date.Day == 12)
		{
			//add message to calender cell for this day stating it is richards's birthday
			//Create lable with text for birthday
			Label myLabel = new Label();
			myLabel.Text = "\nHappy Birthday Richard!";
			e.Cell.Controls.Add(myLabel);
		}

	}

	private void BirthdayCheck(int month, int day, string name)
	{
		DateTime Selected = Calendar1.SelectedDate;
		DateTime birthday = new DateTime(Selected.Year, month, day);

		if (Selected < birthday)
			SelectDatePnl.Text += "This date is before " + name + "'s birthday.<br />";
		else if (Selected > birthday)
			SelectDatePnl.Text += "This date is after " + name + "'s Birthday.<br />";
		else
			SelectDatePnl.Text += "This date is " + name + "'s Birthday.<br />";
	}

	protected void cmdUpload_Click(object sender, EventArgs e)
	{
		//check that file is actually being submitted
		if(Uploader.PostedFile.FileName == "")
			lblInfo.Text = "No file specified";
		else
		{
			//check the extention
			string extention = Path.GetExtension(Uploader.PostedFile.FileName);

			switch (extention.ToLower())
			{
				case ".bmp":
				case ".gif":
				case ".jpg":
					break;
				default:
					lblInfo.Text = "This file type is not allowed.";
					return;
			}

			//Using this code, the saced file will retain its original file name when it's placed on the server
			string serverFileName = Path.GetFileName(Uploader.PostedFile.FileName);
			string fullUploadPath = Path.Combine(uploadDirectory, serverFileName);

			try
			{
				Uploader.PostedFile.SaveAs(fullUploadPath);
				lblInfo.Text = "File " + serverFileName;
				lblInfo.Text += " uploaded successfully to";
				lblInfo.Text += fullUploadPath;
			}
			catch (Exception err)
			{
				lblInfo.Text = err.Message;
			}
		}
	}
}