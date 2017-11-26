<%@ Page Language="C#"   MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="ProjectBeta.ConfirmationPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<%--    <asp:GridView ID="confirmCart" runat="server" AutoGenerateColumns="False" EmptyDataText="There is nothing in your shopping cart." GridLines="None" Width="100%" CellPadding="5" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound" HorizontalAlign="Right">
        <HeaderStyle  BackColor="#333333" ForeColor="#AA8841" HorizontalAlign="Right" />
        <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity"  ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" >--%>

    <br />
    <div id="Confirmation" runat="server">
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
            <asp:BoundField DataField="UnitPrice" HeaderText="Price" DataFormatString="{0:C}"   ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>

            <asp:BoundField DataField="TotalPrice" HeaderText="Total" DataFormatString="{0:C}"  ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" >
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
        </Columns>
    </asp:GridView>





    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Button ID="btnConfirm" runat="server"  Text="Confirm" OnClick="btnConfirm_Click1" CausesValidation="False"  />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel"  OnClick="btnCancel_Click" CausesValidation="False"/>
            <div id="confirmDiv" style="width: 67px" onclick ="btnConfirm_Click">
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    <div id="Confirmed" Visible="false" runat="server">
        <h1 style="text-align:center">Order placed</h1>
    </div>
    <div id="Canceled" Visible="false" runat="server">
        <h1 style="text-align:center">Order canceled</h1>
    </div>
</asp:Content>
