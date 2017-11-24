<%@ Page Language="C#"   MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="ProjectBeta.ConfirmationPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        
    <br />

    <asp:GridView ID="confirmCart" runat="server" AutoGenerateColumns="False" EmptyDataText="There is nothing in your shopping cart." Font-Size="Large" GridLines="None" Width="100%" CellPadding="5" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound">
        <HeaderStyle HorizontalAlign="Right" BackColor="#333333" ForeColor="#AA8841" VerticalAlign="Middle" />
        <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="White" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="UnitPrice" HeaderText="Price" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" >
<ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="TotalPrice" HeaderText="Total" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" >
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
        </Columns>
    </asp:GridView>

</asp:Content>
