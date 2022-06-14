<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestClaseConsulta.aspx.cs" Inherits="DemoWEB_Sem10.TestClaseConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        Ejemplo 2: Test Clase Consultas
    </h1>
<table style="width: 80%">
    <tr>
        <td style="width: 311px">
            <asp:DropDownList ID="cbo1" runat="server" Height="24px" Width="263px">
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="btnVer" runat="server" Text="Ver" OnClick="btnVer_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 311px">Valor seleccionado:</td>
        <td>
            <asp:Label ID="lblCod1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 311px; height: 22px;">
            <asp:DropDownList ID="cbo2" runat="server" Height="25px" Width="262px" AutoPostBack="True" OnSelectedIndexChanged="cbo2_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td style="width: 311px">&nbsp;</td>
        <td>
            <asp:Label ID="lblCod2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="grdDatos" runat="server" BackColor="White" BorderColor="#CC3399" Width="432px">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="width: 311px">
            <asp:Label ID="lblMensaje" runat="server" BackColor="#FF0066"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
