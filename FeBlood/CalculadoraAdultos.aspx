<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalculadoraAdultos.aspx.cs" Inherits="FeBlood.CalculadoraAdultos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2>Calculadora de IMC para Adultos</h2>
        <div class="row">
         <div class="col-md-6">
              <form action="/" method="post" style="align-content:center">
                  <p>Peso :</p>
                  <asp:TextBox runat="server" id="txtPeso" placeholder="Gramos"/>
                  <p>Talla:  </p>
                  <asp:TextBox runat="server" id="txtTalla" placeholder="Centimetros" />
                  <p>Nivel de Hemoglobina :</p>
                  <asp:TextBox runat="server" id="txtHemoglobina" placeholder="Nivel"/>
                  <p>Edad:</p>
                  <asp:TextBox runat="server" id="txtEdad" placeholder="Años"/>
                  <p>Alergia:</p>
                  <asp:TextBox runat="server" id="TextBox1" placeholder="....."/>
                  <p>Enfermedad:</p>
                  <asp:DropDownList ID="ComboBox1" runat="server" style="border: 1px solid #000;">
                        <asp:ListItem Text="Ninguna" Value="0" />
                        <asp:ListItem Text="Diabetes" Value="1" />
                        <asp:ListItem Text="Gastritis" Value="2" />
                        <asp:ListItem Text="Aterosclerosis" Value="3" />
                        <asp:ListItem Text="Bulimia" Value="4" />
                 </asp:DropDownList>
                 <p>Nombre:</p>
                  <asp:TextBox runat="server" id="txtNombre" placeholder="Ejemp...Josse"/><br /><br />
        
        <asp:Button Class="Default-Button" Text="Calcular" runat="server" Id="btnCalcular" OnClick="btnCalcular_Click"/>
        </form>

        </div>
        <div class="col-md-6">
            <img src="images/descarga.jpg" width="570" height="350"/>            
        </div>
        </div>  
        <p>
        <asp:MultiView ActiveViewIndex="0" runat="server" ID="mvListarMenus">
                    <asp:View runat="server">
                                           
                        </asp:View>
            <asp:View runat="server">
                            <h2 style="text-align:center;font-family:fantasy;font-weight:100">
                                <asp:Label Id="lbl1" runat="server" /> <br />
                            </h2>
                        <asp:Button Text="Menus" runat="server" ID="btnMenus" OnClick="btnMenus_Click" style="margin:5px 5px 5px 200px;background-color:lightcyan;width:200px"/>
                        <asp:Button Text="Desayunos" runat="server" OnClick="btnDesayunos_Click" style="margin:5px 5px 5px 5px;background-color:lightcyan;width:200px"/>
                        <asp:Button ID="btnAlmuerzo" Text="Almuerzos" runat="server" OnClick="btnAlmuerzo_Click" style="margin:5px 5px 5px 5px;background-color:lightcyan;width:200px"/>
                        <asp:Button ID="btnCena" Text="Cena" runat="server" OnClick="btnCena_Click" style="margin:5px 5px 5px 5px;background-color:lightcyan;width:200px" />
                                <br />
                        <asp:MultiView ActiveViewIndex="0" ID="mvComidas" runat="server" >
                            <asp:View runat="server">
                                <asp:GridView ID="gvMenus" runat="server" style="align-self:center">
                        </asp:GridView>
                            </asp:View>
                            <asp:View runat="server">
                                <p>Desayunos</p>
                                <asp:TextBox runat="server" Id="txtPreD" PlaceHolder="Ejm:P01"/>
                                <asp:Button Text="Ver Ingredientes" runat="server" ID="btnPreD"/>
                            </asp:View>
                            <asp:View runat="server">
                                <p>Almuerzos</p>
                                <asp:TextBox runat="server" Id="txtPreA" PlaceHolder="Ejm:P01"/>
                                <asp:Button Text="Ver Ingredientes" runat="server" ID="btnPreA" OnClick="btnPreA_Click"/>
                            </asp:View>
                            <asp:View runat="server">
                                <p>Cenas</p>
                                <asp:TextBox runat="server" Id="txtPreC" PlaceHolder="Ejm:P01"/>
                                <asp:Button Text="Ver Ingredientes" runat="server" ID="btnPreC"/>
                            </asp:View>
                </asp:MultiView>
                        <br />     
            </asp:View>

                </asp:MultiView>
            </p>
        <div class="row">
        <div class="col-md-12">
            
                <h1 style="text-align: center" >¿Cuáles son los valores normales de hemoglobina en sangre?</h1>
          
            
            <table class="table table-hover table-dark table-bordered" style="background-color:lightblue">
                <thead>
                    <tr>
                        <th scope="col" >Hemoglobina en:</th>
                        <th scope="col" >Valor normal</th>
                        <th scope="col" >Leve</th>
                        <th scope="col" >Moderado</th>
                        <th scope="col" >Grave</th>
                    </tr>
                </thead>
                <tbody>


                    <tr>
                        <th scope="row">Mujeres</th>
                        <td>12.1 - 15.1</td>
                        <td>11 - 11.9</td>
                        <td>8 - 10.9</td>
                        <td>Menos de 8</td>
                    </tr>
                    <tr>
                        <th scope="row">Mujeres embarazadas</th>
                        <td>11 o superior</td>
                        <td>10 - 10.9</td>
                        <td>7 - 9.9</td>
                        <td>Menos de 7</td>
                    </tr>
                    <tr>
                        <th scope="row">Hombres</th>
                        <td>13.8 - 17.2</td>
                        <td>10 - 12.9</td>
                        <td>8 - 10.9</td>
                        <td>Menos de 8</td>
                    </tr>
                    <tr>
                        <th scope="row">Niños de (6 meses - 4 años)</th>
                        <td>11 o  superior</td>
                        <td>10 - 10.9</td>
                        <td>7 - 9.9</td>
                        <td>Menos de 7</td>
                    </tr>
                    <tr>
                        <th scope="row">Niños de (5 - 11 años)</th>
                        <td>11.5 o  superior</td>
                        <td>11 - 11.4</td>
                        <td>8 - 10.9</td>
                        <td>Menos de 8</td>
                    </tr>
                    <tr>
                        <th scope="row">Niños de (12 - 14 años)</th>
                        <td>12 o  superior</td>
                        <td>11 - 11.9</td>
                        <td>8 - 10.9</td>
                        <td>Menos de 8</td>
                    </tr>
                </tbody>
            </table>
        </div>
        </div>
</asp:Content>
