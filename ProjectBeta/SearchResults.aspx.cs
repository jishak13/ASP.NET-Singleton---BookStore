using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectBeta
{
    public partial class SearchResults : System.Web.UI.Page
    {
        private string currentSearch;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Checks if there is a query string
            if (Request.QueryString["search"] != String.Empty && Request.QueryString["search"] != null)
            {
                //do stuff with query string yay
                currentSearch = Request.QueryString["search"];
                Session["PreviousSearch"] = currentSearch;
                searchString.InnerHtml = "The query string(what they searched for) passed was: " + currentSearch;
            }
            else
            {
                //oh no m8, no query string for u
                searchString.InnerHtml = "No query string";
            }
        }
    }
}