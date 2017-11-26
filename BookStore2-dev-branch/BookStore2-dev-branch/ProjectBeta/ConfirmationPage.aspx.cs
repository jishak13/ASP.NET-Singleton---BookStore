using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectBeta
{
    public partial class ConfirmationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            confirmCart.DataSource = Cart.Instance.Items;
            confirmCart.DataBind();
            //btnConfirm.Attributes.Add("onclick", btnConfirm_Click1 + ";return true;");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[3].Text = $"SubTotal: {Cart.Instance.GetSubTotal():C}<br>Shipping & Handling: {Cart.Instance.GetShipping():C}<br>Tax: {Cart.Instance.GetTax():C}<br>Total: {Cart.Instance.GetTotal():C}";
            }
        }

     

        protected void btnConfirm_Click1(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}