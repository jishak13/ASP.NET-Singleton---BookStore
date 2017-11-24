<%@ Page Language="C#"   MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="ProjectBeta.SearchResults" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3 id="lblSearchResults">
    <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </h3>
    <p style="position: relative">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand1" AllowSorting="True" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField  DataField="isbn" HeaderText="ISBN" SortExpression="isbn" >
                <HeaderStyle BackColor="#333333" ForeColor="#AA8841" />
                <ItemStyle HorizontalAlign="Left" Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" >
                <HeaderStyle BackColor="#333333" ForeColor="#AA8841" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" >
                <HeaderStyle BackColor="#333333" ForeColor="#AA8841" />
                </asp:BoundField>
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" >
                <HeaderStyle BackColor="#333333" ForeColor="#AA8841" />
                </asp:BoundField>
                <asp:BoundField DataField="code" HeaderText="Code" SortExpression="code" >
                <HeaderStyle BackColor="#333333" ForeColor="#AA8841" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" >
                <HeaderStyle BackColor="#333333" ForeColor="#AA8841" />
                </asp:BoundField>
                <asp:ButtonField ButtonType="Button" CommandName="AddToCart" Text="Add to Cart" >
                <HeaderStyle BackColor="#333333" />
                </asp:ButtonField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksRUsConnectionString %>" SelectCommand="Select *
 FROM bcview
WHERE (([Author] LIKE '%' + @Author + '%')
Or([ISBN] LIKE '%' + @ISBN + '%')
Or([Title] LIKE '%' + @Title + '%')
Or([Course] LIKE '%' + @Course + '%')
Or([Code] LIKE '%' + @Code + '%'))

">
            <SelectParameters>
                <asp:QueryStringParameter Name="Author" QueryStringField="search" Type="String" />
                <asp:QueryStringParameter Name="ISBN" QueryStringField="search" Type="String" />
                <asp:QueryStringParameter Name="Title" QueryStringField="search" Type="String" DefaultValue="" />
                <asp:QueryStringParameter Name="Course" QueryStringField="search" DefaultValue="" />
                <asp:QueryStringParameter Name="Code" QueryStringField="search" />
            </SelectParameters>
        </asp:SqlDataSource>
        </p>

<%--    <h3 id="searchString" runat="server">
        &nbsp;</h3>--%>

    <h3 id="searchString" runat="server" class="text-center">
        <asp:Label ID="addToCartLabel" runat="server"></asp:Label>
    </h3>

</asp:Content>

