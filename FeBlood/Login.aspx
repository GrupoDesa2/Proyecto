<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FeBlood.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
    <br />
    <!-- Insertar un menu dentro de la pagina Login-->
    <asp:Login ID="lInicio" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="15" BorderStyle="Solid" BorderWidth="10px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="204px" Width="393px" OnAuthenticate="lInicio_Authenticate">

        <InstructionTextStyle Font-Italic="True" ForeColor="Black"  />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:Login>
</asp:Content>
