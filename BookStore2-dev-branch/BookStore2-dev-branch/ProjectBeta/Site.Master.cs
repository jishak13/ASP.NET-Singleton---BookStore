using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectBeta
{
    public partial class SiteMaster : MasterPage
    {
        private string previousSearch;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cart"] == null)
            {
                //cart stuff goes here
            }


            //Checks if PreviousSearch session value exists
            if (Session["PreviousSearch"] != null)
            {
                previousSearch = Session["PreviousSearch"].ToString();
                previousSearchLabel.Text = "Previous Search: " + previousSearch;
                previousSearchLabel.Visible = true;
            }
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            //Validates search input before....searching???
            Page.Validate();

            if (Page.IsValid)
            {
                Response.Redirect("SearchResults.aspx?search=" + searchTextBox.Text);
            }
        }

    }
}