using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectBeta
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        Cart cart;
   
        protected void Page_Load(object sender, EventArgs e)
        {
            //gvCart.DataSource = Cart.Instance.Items;
            //gvCart.DataBind();
            //lblCartCount.Text = Cart.Instance.Items.Count.ToString();
            
            cart = (Cart)Session["cart"];
            if (cart == null)
            {
                cart = new Cart();
                gvCart.DataSource = cart.Items;
                gvCart.DataBind();
                btnCheckout.Visible = false;
                CartContains.Visible = false;
                lblCartCount.Visible = false;
            }
            else
            {
                gvCart.DataSource = cart.Items;
                gvCart.DataBind();
                lblCartCount.Text = cart.Items.Count.ToString() + " items";
                checkForNull();
            }
         }
        public void checkForNull()
        {
            if (cart.Items.Count == 0)
            {
                lblCartCount.Text = "";
                CartContains.Visible = false;
                btnCheckout.Visible = false;
            }
        }
        public void gvCart_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (Page.IsPostBack)
            {
                if (e.CommandName == "Remove")
                {
                    cart = (Cart)Session["cart"];
                    string pTitle = e.CommandArgument.ToString();
                    //int index = Convert.ToInt32(e.CommandArgument);

                    //GridViewRow selectedRow = gvCart.Rows[index];
                    //string isbn = selectedRow.Cells[0].Text;
                    //string author = selectedRow.Cells[1].Text;
                    //string title = selectedRow.Cells[2].Text;
                    //string Course = selectedRow.Cells[3].Text;
                    //string Code = selectedRow.Cells[4].Text;
                    //string Price = selectedRow.Cells[5].Text;
                    //string newPrice = Price.Remove(0, 1);

                    //Products newProd = new Products(isbn, author, title, Course, Code, newPrice);
                    ////cart.Add(newProd);
                    cart.RemoveItem(pTitle);
                    //Session["cart"] = cart;

                    //addToCartLabel.Text = title + " added to cart!";

                    //Session["previouslyAddedItem"] = title;
                    gvCart.DataBind();

                    lblCartCount.Text = cart.Items.Count.ToString() + " items";
                    checkForNull();

                }
            }

        }

        public void gvCart_RowDataBound(object sender,GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                //e.Row.Cells[4].Text = $"Total: {Cart.Instance.GetSubTotal():C}";
                e.Row.Cells[4].Text = $"Total: {cart.GetSubTotal():C}";
            }
        }
        public void UpdateQuantity(object sender,GridViewCommandEventArgs e)
        {

        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ConfirmationPage");
        }

    }
}