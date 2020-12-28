<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/Intranet.Master" AutoEventWireup="true" CodeBehind="Privado.aspx.cs" Inherits="FeBlood.Intranet.Privado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
        <div >
            <h3 style="text-align:center;">
                Este es un sitio privado, donde solo ingresa personal autorizado
            </h3>
            <br />
            <br />
            <p style="margin:0px 0px 0px 200px;font-size:20px">
            Bienvenido :
            <asp:LoginName ID="LoginName2" runat="server" />
            <br />
            <br />
            <asp:LoginStatus ID="LoginStatus2" runat="server" />
            <br />
            </p>
            <center>       
            <p style="text-align:center">
                        <h1>Mantenimiento de la tabla Alimento</h1>
                        <p>IdAlimento: <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox runat="server" Id="txtIdMenu" ValidationGroup="A"  placeholder="Ingrese el IdAlimento"/>
                            <asp:RequiredFieldValidator ID="rfvIdAlimento" runat="server" ControlToValidate="txtIdMenu" ErrorMessage="IdMenu Obligatorio" ValidationGroup="A">(*)</asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdMenu" ErrorMessage="IdAlimento Obligatorio" ValidationGroup="B">(*)</asp:RequiredFieldValidator>
                        </p>
                        <p>NombreAlimento:<br />
                            &nbsp;&nbsp;&nbsp;
                            <asp:TextBox runat="server" Id="txtNombrePlato" ValidationGroup="A"  placeholder="Ingrese el Nombre de Alimento"/>
                            <asp:RequiredFieldValidator ID="rfvNombreAlimento" runat="server" ControlToValidate="txtNombrePlato" ErrorMessage="NombrePlato obligatorio" ValidationGroup="A">(*)</asp:RequiredFieldValidator>
                        </p>
                        <p>TipoAlimento:<br />
                            &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtTipoMenu" runat="server" ValidationGroup="A"  placeholder="Ingrese el Tipo de Alimento"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTipoAlimento" runat="server" ControlToValidate="txtTipoMenu" ErrorMessage="TipoMenu Obligatorio" ValidationGroup="A">(*)</asp:RequiredFieldValidator>
                        </p>
                        <p>
                            Energia:<br />
                            <asp:TextBox ID="txtIngredientes" runat="server" ValidationGroup="A"  placeholder="Ingrese Energia"></asp:TextBox>
                        </p>
                        <p>Proteinas:<br />
                            <asp:TextBox ID="txtProteinas" runat="server" ValidationGroup="A"  placeholder="Ingrese la cantidad de Proteinas"></asp:TextBox>
                        </p>
                        <p>Grasas:<br />
                           <asp:TextBox ID="txtGrasas" runat="server" ValidationGroup="A"  placeholder="Ingrese la cantidad de Grasas"></asp:TextBox>
                        </p>
                        <p>Carbohidratos<br />
                           <asp:TextBox ID="txtCarbohidratos" runat="server" ValidationGroup="A" placeholder="Ingrese la cantidad de Carbohidratos"></asp:TextBox>
                        </p>
                        <p>Calorias:<br />
                            <asp:TextBox ID="txtCalorias" runat="server" ValidationGroup="A" placeholder="Ingrese la cantidad de Calorias" ></asp:TextBox>
                        </p>
                        <p>
                            <asp:Button class="btn btn-primary" ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" ValidationGroup="A" />
                            <asp:Button class="btn btn-primary" ID="btnEliminar" runat="server" Text="Elimninar" OnClick="btnEliminar_Click" ValidationGroup="B" />
                            <asp:Button class="btn btn-primary" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" ValidationGroup="A" />
                        </p>
                        <asp:GridView ID="gvEscuela" CssClass="table" runat="server" style="align-self:center;padding:5px 5px 5px 5px">
                        </asp:GridView>
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" ValidationGroup="B" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="A" />
            </p>
            </center>  
        </div>
</asp:Content>
