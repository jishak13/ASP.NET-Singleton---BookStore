<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ProjectBeta.ShoppingCart" Title="Shopping Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> </h2>
    <h3 id="CartContains" runat="server">Your cart contains   </h3>
        <asp:Label ID="lblCartCount" runat="server"></asp:Label>
        <asp:GridView runat="server" ID="gvCart" AutoGenerateColumns="False" EmptyDataText="There is nothing in your shopping cart." GridLines="None" Width="100%" CellPadding="5" ShowFooter="True" DataKeyNames="Product" OnRowDataBound="gvCart_RowDataBound" OnRowCommand="gvCart_RowCommand">
                <HeaderStyle HorizontalAlign="Left" BackColor="#494949" ForeColor="#AA8841" />
                <FooterStyle HorizontalAlign="Right" BackColor="#757575" ForeColor="#FFFFFF" />
                <%--<AlternatingRowStyle BackColor="#F8F8F8" />--%>
                <Columns>
 
                    <asp:BoundField DataField="Title" HeaderText="Title" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" />
                     <asp:BoundField DataField="Author" HeaderText="Author" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" />
                    <asp:TemplateField HeaderText="Quantity" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="txtQuantity"  Columns="5" Text='<%# Eval("Quantity") %>' ></asp:TextBox><br />
                            <asp:LinkButton CausesValidation="false" runat="server" ID="btnRemove" Text="Remove" CommandArgument='<%#Eval("Product") %>' CommandName="Remove" style="font-size:12px;"></asp:LinkButton>
 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="UnitPrice" HeaderText="Price" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="Total" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />
                </Columns>
            </asp:GridView>


    <asp:Button ID="btnCheckout" runat="server" Text="Checkout" style="float: right" CausesValidation="False" OnClick="btnCheckout_Click"/>
</asp:Content>

 
    




