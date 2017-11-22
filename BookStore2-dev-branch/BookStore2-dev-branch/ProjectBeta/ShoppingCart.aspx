<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ProjectBeta.ShoppingCart" Title="Shopping Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> </h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
<p style="width: 1128px; height: 187px">
    <asp:Label ID="lblCart" runat="server" Text="Label"></asp:Label>
</p>
</asp:Content>