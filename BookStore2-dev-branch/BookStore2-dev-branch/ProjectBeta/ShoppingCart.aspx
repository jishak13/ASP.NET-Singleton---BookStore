<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShoppingCarts" Title="Shopping Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> </h2>
    <h3>Your cart contains
        <asp:Label ID="lblCartCount" runat="server"></asp:Label>
&nbsp;Items</h3>
<p style="width: 1128px; height: 187px">
   
</p>
</asp:Content>