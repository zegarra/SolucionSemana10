﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestPlanilla.aspx.cs" Inherits="DemoWEB_Sem10.TestPlanilla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
       Test Planilla ep3
    </h1>
     <table >

            

            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>

            <tr>
                <td style="width: 139px" class="style2">
                    Empleado:</td>
                <td >
                    <asp:TextBox ID="txtNombre" runat="server" Width="294px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 139px" class="style2">
                    Area:</td>
                <td>
                    <asp:ListBox ID="lstArea" runat="server" Height="120px" Width="148px" OnSelectedIndexChanged="lstArea_SelectedIndexChanged">
                        <asp:ListItem Value="0">--Seleccione--</asp:ListItem>
                        <asp:ListItem Value="3500">Informatica</asp:ListItem>
                        <asp:ListItem Value="2000">Logistica</asp:ListItem>
                        <asp:ListItem Value="2500">Marketing</asp:ListItem>
                        <asp:ListItem Value="1900">Contabilidad</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="width: 139px; height: 22px;" class="style2">
                    Estado Civil:<br />
                </td>
                <td style="height: 22px" >
                    <asp:DropDownList ID="cboEC" runat="server" Width="161px" OnSelectedIndexChanged="cboEC_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="0">--Seleccione--</asp:ListItem>
                        <asp:ListItem Value="100">Soltero</asp:ListItem>
                        <asp:ListItem Value="200">Casado</asp:ListItem>
                        <asp:ListItem Value="500">Divorciado</asp:ListItem>
                        <asp:ListItem Value="300">Viudo</asp:ListItem>
                        <asp:ListItem Value="200">Conviviente</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 139px" class="style2">
                    Num. Hijos:</td>
                <td ><asp:DropDownList ID="cboHijos" runat="server" Width="161px" OnSelectedIndexChanged="cboHijos_SelectedIndexChanged">
                    <asp:ListItem Selected="True">0</asp:ListItem>
                    <asp:ListItem Value="200">1</asp:ListItem>
                    <asp:ListItem Value="400">2</asp:ListItem>
                    <asp:ListItem Value="600">3</asp:ListItem>
                    <asp:ListItem Value="800">4</asp:ListItem>
                    <asp:ListItem Value="1000">5</asp:ListItem>
                    <asp:ListItem Value="0">6</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 139px; height: 22px;" class="style2">
                    Nivel:</td>
                <td style="height: 22px" >
                    <asp:DropDownList ID="cboNivel" runat="server" Width="161px" OnSelectedIndexChanged="cboNivel_SelectedIndexChanged">
                        <asp:ListItem Value="0">--Seleccione--</asp:ListItem>
                        <asp:ListItem Value="150">Cursando</asp:ListItem>
                        <asp:ListItem Value="200">Egresado</asp:ListItem>
                        <asp:ListItem Value="300">Bachiller</asp:ListItem>
                        <asp:ListItem Value="400">Titulado</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 139px; height: 20px;">
                    Descuentos:</td>
                <td style="height: 20px">
                    <asp:CheckBox ID="chkESSalud" runat="server"  Text="ESSalud" CssClass="style4" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="chkAFP" runat="server"  Text="AFP" CssClass="style4" /></td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 139px; height: 20px;">
                    Minutos de tardanza:</td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtMinutosTard" runat="server" Width="77px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 139px; height: 20px;">
                    Condicion:</td>
                <td style="height: 20px" >
                    <asp:RadioButton ID="optEsta" runat="server" GroupName="Tipo"  Text="Estable" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="optCont" runat="server" GroupName="Tipo"  Text="Contratado" />
&nbsp;
                    <asp:RadioButton ID="optPract" runat="server" GroupName="Tipo"  Text="Practicante" />
                </td>
            </tr>
            <tr>
                <td style="width: 139px" class="style2">
                    &nbsp;</td>
                <td >
                    <asp:Button ID="btnCalcularPago" runat="server" Text="Calcular Pago" 
                        Width="150px" OnClick="btnCalcularPago_Click"  /></td>
            </tr>
            <tr>
                <td style="width: 139px" class="style2">
                    Sueldo:</td>
                <td >
                    <asp:TextBox ID="txtSueldo" runat="server" ReadOnly="True" ></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 139px" class="style2">
                    Bonificaciones:</td>
                <td >
                    <asp:TextBox ID="txtBonificaciones" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style5" style="width: 139px">
                    Descuentos:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDescuentos" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 139px" class="style2">
                    A Pagar:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtPago" runat="server" ReadOnly="True" BackColor="#9999FF" ForeColor="Black"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="style2">
                    <asp:Label ID="lblMensaje" runat="server" BorderStyle="Groove" Width="562px"></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TestMenu.aspx">Volver al Menu</asp:HyperLink>
                </td>
            </tr>
        </table>

</asp:Content>
