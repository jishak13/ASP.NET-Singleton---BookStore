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
        private List<Products> cart = new List<Products>();
        CartItem cartItem;
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.CellPadding = 40;
            //Checks if there is a query string
            if (Request.QueryString["search"] != String.Empty && Request.QueryString["search"] != null)
            {
                //do stuff with query string yay
                currentSearch = Request.QueryString["search"];
                Session["PreviousSearch"] = currentSearch;
                lblOutput.Text = "Search Results for \"" + currentSearch + "\"";
            }
            else
            {
                //oh no m8, no query string for u
                searchString.InnerHtml = "No query string";
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
      

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            //if (Page.IsPostBack)
            //{
            //    if(Session["cart"]!=null)
                
            //}
            if (e.CommandName == "AddToCart")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                GridViewRow selectedRow = GridView1.Rows[index];
                string isbn = selectedRow.Cells[0].Text;
                string author = selectedRow.Cells[1].Text;
                string title = selectedRow.Cells[2].Text;
                string Course = selectedRow.Cells[3].Text;
                string Code = selectedRow.Cells[4].Text;
                string Price = selectedRow.Cells[5].Text;

                Products newProd = new Products(isbn, author, title, Course, Code, Price);
                //cart.Add(newProd);
                Cart.Instance.AddItem(newProd);


                addToCartLabel.Text = title + " added to cart!";

                //Session["previouslyAddedItem"] = title;
                
            }
        }

    }
}