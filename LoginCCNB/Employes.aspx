<%@ Page Title="" Language="C#" MasterPageFile="~/gabaritPage.Master" AutoEventWireup="true" CodeBehind="Employes.aspx.cs" Inherits="LoginCCNB.Employes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="infosCCNBContentPlaceHolder" runat="server">
    <asp:GridView ID="employesGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="employesSqlDataSource" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnRowCommand="employesGridView_RowCommand">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:ButtonField Text="Afficher" />
            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="employesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LoginCCNB.Properties.Settings.NorthwindConnectionString %>" SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [BirthDate], [Country] FROM [Employees]"></asp:SqlDataSource>
    <br />
    <hr />
    <br />
    Nom :
    <asp:TextBox ID="nomTextBox" runat="server"></asp:TextBox>
    <br />
    <br />
    Prénom :
    <asp:TextBox ID="prenomTextBox" runat="server"></asp:TextBox>
</asp:Content>
