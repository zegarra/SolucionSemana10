<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestClaseNumero.aspx.cs" Inherits="DemoWEB_Sem10.TestClaseNumero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        Ejemplo 1: Test Clase clsNumero
    </h1>
   
<table style="width: 60%">
    <tr>
        <td style="width: 146px">Ingrese numero:&nbsp;</td>
        <td>
            <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
            <asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Calcular" />
        </td>
    </tr>
    <tr>
        <td style="width: 146px">Su factorial es;</td>
        <td>
            <asp:Label ID="lblFactorial" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 146px">es primo?</td>
        <td>
            <asp:Label ID="lblPrimo" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 146px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 146px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
   
</asp:Content>
