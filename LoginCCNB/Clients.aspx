<%@ Page Title="" Language="C#" MasterPageFile="~/gabaritPage.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="LoginCCNB.Clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="infosCCNBContentPlaceHolder" runat="server">
    Veuillez entrer le pays d&#39;origine du client:<br />
<br />
<asp:TextBox ID="paysTextBox" runat="server" Width="190px"></asp:TextBox>
<asp:RequiredFieldValidator ID="paysRequiredFieldValidator" runat="server" ControlToValidate="paysTextBox" ErrorMessage="Vous devez entrer le pays d'origine du client"></asp:RequiredFieldValidator>
<br />
<br />
<asp:Button ID="rechercherButton" runat="server" Text="Rechercher" OnClick="rechercherButton_Click" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="annulerButton" runat="server" Text="Annuler" OnClick="annulerButton_Click" />
<br />
<br />
<asp:GridView ID="clientsGridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EnableModelValidation="True">
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
</asp:GridView>
<br />
<asp:Label ID="numRowsLabel" runat="server"></asp:Label>
</asp:Content>
