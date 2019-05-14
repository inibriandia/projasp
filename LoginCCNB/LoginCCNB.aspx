<%@ Page Title="" Language="C#" MasterPageFile="~/gabaritPage.Master" AutoEventWireup="true" CodeBehind="LoginCCNB.aspx.cs" Inherits="LoginCCNB.LoginCCNB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="infosCCNBContentPlaceHolder" runat="server">
    <p>
    Numéro d&#39;employé :
    <asp:TextBox ID="numEmployeTextBox" runat="server" Width="194px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="numEmpRequiredFieldValidator" runat="server" ControlToValidate="numEmployeTextBox" ErrorMessage="Le numéro d'empoyé est obligatoire"></asp:RequiredFieldValidator>
</p>
<p>
    Département :
    <asp:TextBox ID="departementTextBox" runat="server" Width="187px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="deptRequiredFieldValidator" runat="server" ControlToValidate="departementTextBox" ErrorMessage="Le département est obligatoire"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" />
</p>
</asp:Content>
