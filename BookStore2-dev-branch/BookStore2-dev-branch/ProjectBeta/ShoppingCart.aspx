<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ProjectBeta.ShoppingCart" Title="Shopping Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> </h2>
    <h3>Your cart contains   </h3>
        <asp:Label ID="lblCartCount" runat="server"></asp:Label>
&nbsp;Items
        <asp:GridView runat="server" ID="gvCart" AutoGenerateColumns="False" EmptyDataText="There is nothing in your shopping cart." GridLines="None" Width="100%" CellPadding="5" ShowFooter="True" DataKeyNames="Product" OnRowDataBound="gvCart_RowDataBound" OnRowCommand="gvCart_RowCommand" >
                <HeaderStyle HorizontalAlign="Left" BackColor="#333333" ForeColor="#AA8841" />
                <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
                <AlternatingRowStyle BackColor="#F8F8F8" />
                <Columns>
 
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                     <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="txtQuantity"  Columns="5" Text='<%# Eval("Quantity") %>' ></asp:TextBox><br />
                            <asp:LinkButton runat="server" ID="btnRemove" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("Product") %>' style="font-size:12px;"></asp:LinkButton>
 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="UnitPrice" HeaderText="Price" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="Total" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />
                </Columns>
            </asp:GridView>
<<<<<<< HEAD
    </h3>
    <p>
        <asp:Button ID="btnProceedToCheckout" runat="server" CssClass="fa-pull-right" OnClick="btnProceedToCheckout_Click" Text="Checkout" UseSubmitBehavior="False" />
    </p>
</asp:Content>
=======
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ConfirmationPage.aspx" CssClass="has-feedback" style="float: right">Checkout</asp:HyperLink>
</asp:Content>

 
    



>>>>>>> f797f7e2933bbd2fca53f41a5eb5e9f976fca895
