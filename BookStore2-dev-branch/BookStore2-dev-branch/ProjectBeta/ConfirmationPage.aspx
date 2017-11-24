<%@ Page Language="C#"   MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="ProjectBeta.ConfirmationPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        
    <br />

    <asp:GridView ID="confirmCart" runat="server" AutoGenerateColumns="False" EmptyDataText="There is nothing in your shopping cart." GridLines="None" Width="100%" CellPadding="5" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound">
        <HeaderStyle HorizontalAlign="Left" BackColor="#333333" ForeColor="#AA8841" />
        <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField HeaderText="Quantity" />
            <asp:BoundField HeaderText="Price" />
            <asp:BoundField HeaderText="Total" />
        </Columns>
    </asp:GridView>

</asp:Content>
