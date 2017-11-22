<%@ Page Language="C#"   MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="ProjectBeta.SearchResults" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>CONRO CHANGED THIS AY WADDUP FAM</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand1">
            <Columns>
                <asp:BoundField  DataField="isbn" HeaderText="isbn" SortExpression="isbn" />
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:ButtonField ButtonType="Button" CommandName="AddToCart" Text="Add to Cart" />
            </Columns>
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
        Use this area to provide additional information.</p>
    <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
    <h3 id="searchString" runat="server"></h3>
</asp:Content>

