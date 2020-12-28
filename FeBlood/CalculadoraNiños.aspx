
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalculadoraNiños.aspx.cs" Inherits="FeBlood.CalculadoraNiños" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2 style="font-weight:200">Encuentra la mejor dieta para tus hijos</h2>
        <div class="row">
         <div class="col-md-6">
              <form action="/" method="post" style="align-content:center">
                  <p>Nombre:</p>
                  <asp:TextBox runat="server" id="txtNombre" placeholder="Ejemp...Josse"/>
                  <p>Edad:</p>
                  <asp:TextBox runat="server" id="txtEdad" placeholder="Años"/>
                  <p>Peso :</p>
                  <asp:TextBox runat="server" id="txtPeso" placeholder="Gramos"/>
                  <p>Talla:  </p>
                  <asp:TextBox runat="server" id="txtTalla" placeholder="Centimetros" />
                  <p>Nivel de Hemoglobina :</p>
                  <asp:TextBox runat="server" id="txtHemoglobina" placeholder="Nivel"/>
                  <p>Enfermedad:</p>
                  <asp:DropDownList ID="ComboBox1" runat="server" style="border: 1px solid #000;width:178px;height:25px">
                        <asp:ListItem Text="Ninguna" Value="0" />
                        <asp:ListItem Text="Diabetes" Value="1" />
                        <asp:ListItem Text="Gastritis" Value="2" />
                        <asp:ListItem Text="Aterosclerosis" Value="3" />
                        <asp:ListItem Text="Bulimia" Value="4" />
                 </asp:DropDownList>
                 <br /><br />
        
        <asp:Button Class="Default-Button" Text="Calcular" runat="server" Id="btnCalcular" OnClick="btnCalcular_Click"/>
        </form>
        </div>
        <div class="col-md-6">
            <img src="images/niños.jpg" />            
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
                        <asp:Button Text="Desayunos" runat="server" OnClick="btnDesayunos_Click" style="margin:5px 5px 5px 200px;background-color:lightcyan;width:200px"/>
                        <asp:Button ID="btnAlmuerzo" Text="Almuerzos" runat="server" OnClick="btnAlmuerzo_Click" style="margin:5px 5px 5px 5px;background-color:lightcyan;width:200px"/>
                        <asp:Button ID="btnCena" Text="Cena" runat="server" OnClick="btnCena_Click" style="margin:5px 5px 5px 5px;background-color:lightcyan;width:200px" />
                                <br />
                        <asp:MultiView ActiveViewIndex="0" ID="mvComidas" runat="server" >
                            <asp:View runat="server">
                                <br />
                        
                            </asp:View>
                            <asp:View runat="server" >
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBANEMIAConnectionString %>" SelectCommand="SELECT [IdPlato], [NombrePlato], [TipoPlato], [calorias] FROM [TPlato] WHERE ([TipoPlato] LIKE '%' + @TipoPlato + '%')">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="Desayuno" Name="TipoPlato" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="IdPlato" DataSourceID="SqlDataSource2" RepeatColumns="3">
                                    <ItemTemplate>
                                        IdPlato:
                                        <asp:Label ID="IdPlatoLabel" runat="server" Text='<%# Eval("IdPlato") %>' />
                                        <br />
                                        NombrePlato:
                                        <asp:Label ID="NombrePlatoLabel" runat="server" Text='<%# Eval("NombrePlato") %>' />
                                        <br />
                                        TipoPlato:
                                        <asp:Label ID="TipoPlatoLabel" runat="server" Text='<%# Eval("TipoPlato") %>' />
                                        <br />
                                        calorias:
                                        <asp:Label ID="caloriasLabel" runat="server" Text='<%# Eval("calorias") %>' />
                                        <br />
                                        &nbsp;<asp:Image ID="Image1" runat="server" Height="275px" ImageUrl='<%# "~/images/"+Eval("imagen") %>' Width="398px" />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBANEMIAConnectionString2 %>" SelectCommand="SELECT * FROM [TPlato] WHERE ([TipoPlato] LIKE '%' + @TipoPlato + '%')">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="Desayuno" Name="TipoPlato" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:TextBox runat="server" Id="txtPreD" PlaceHolder="Ejm:P01" style="margin-left:auto;margin-right:auto;"/>
                                <asp:Button Text="Ver Ingredientes" runat="server" ID="btnPreD" OnClick="btnPreD_Click" style="margin-left:auto;margin-right:auto;"/>
                                <asp:MultiView ActiveViewIndex="0" ID="mvdesayunos" runat="server">
                                    <asp:View runat="server">

                                    </asp:View>
                                    <asp:View runat="server">
                                <asp:GridView runat="server" ID="gvDetalleD" style="margin-left:auto;margin-right:auto;"></asp:GridView>
                                <asp:TextBox runat="server" Id="txtVerIngD" PlaceHolder="Ejm:A0001" style="margin-left:auto;margin-right:auto;"/>
                                <asp:Button Text="Ver Valor Nutricional" runat="server" ID="btnVerIngD" style="margin-left:auto;margin-right:auto;" OnClick="btnVerIngD_Click"/>
                                <asp:MultiView ActiveViewIndex="0" ID="mvIngD" runat="server">  
                                    <asp:View runat="server">

                                    </asp:View> 
                                    <asp:View runat="server">
                                    <asp:GridView runat="server" ID="gvIngD" style="margin-left:auto;margin-right:auto;"></asp:GridView>
                                    </asp:View>
                                </asp:MultiView>
                                    </asp:View>
                                </asp:MultiView>
                            </asp:View>
                            <asp:View runat="server" >
                                <asp:DataList ID="DataList2" runat="server" DataKeyField="IdPlato" DataSourceID="Almuerzos" RepeatColumns="3">
                                    <ItemTemplate>
                                        IdPlato:
                                        <asp:Label ID="IdPlatoLabel" runat="server" Text='<%# Eval("IdPlato") %>' />
                                        <br />
                                        NombrePlato:
                                        <asp:Label ID="NombrePlatoLabel" runat="server" Text='<%# Eval("NombrePlato") %>' />
                                        <br />
                                        TipoPlato:
                                        <asp:Label ID="TipoPlatoLabel" runat="server" Text='<%# Eval("TipoPlato") %>' />
                                        <br />
                                        calorias:
                                        <asp:Label ID="caloriasLabel" runat="server" Text='<%# Eval("calorias") %>' />
                                        <br />
                                        &nbsp;<asp:Image ID="Image2" runat="server" Height="267px" ImageUrl='<%# "~/images/"+Eval("imagen") %>' Width="398px"/>
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="Almuerzos" runat="server" ConnectionString="<%$ ConnectionStrings:DBANEMIAConnectionString3 %>" SelectCommand="SELECT * FROM [TPlato] WHERE ([TipoPlato] LIKE '%' + @TipoPlato + '%')">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="Almuerzo" Name="TipoPlato" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:TextBox runat="server" Id="txtPreA" PlaceHolder="Ejm:P01" style="margin-left:auto;margin-right:auto;"/>
                                <asp:Button Text="Ver Ingredientes" runat="server" ID="btnPreA" OnClick="btnPreA_Click" style="margin-left:auto;margin-right:auto;"/>
                                <asp:MultiView ActiveViewIndex="0" ID="mvalmuerzos" runat="server">
                                    <asp:View runat="server">

                                    </asp:View>
                                    <asp:View runat="server">
                                <asp:GridView runat="server" ID="gvDetalleA" style="margin-left:auto;margin-right:auto;"></asp:GridView>
                                        <asp:TextBox runat="server" Id="txtVerIngA" PlaceHolder="Ejm:A0001" style="margin-left:auto;margin-right:auto;"/>
                                <asp:Button Text="Ver Valor Nutricional" runat="server" ID="btnVerIngA" style="margin-left:auto;margin-right:auto;" OnClick="btnVerIngA_Click"/>
                                        <asp:MultiView ActiveViewIndex="0" ID="mvIngA" runat="server">  
                                    <asp:View runat="server">

                                    </asp:View> 
                                    <asp:View runat="server">
                                    <asp:GridView runat="server" ID="gvIngA" style="margin-left:auto;margin-right:auto;"></asp:GridView>
                                    </asp:View>
                                </asp:MultiView>
                                    </asp:View>
                                </asp:MultiView>
                            </asp:View>
                            <asp:View runat="server">
                                <asp:DataList ID="DataList3" runat="server" DataKeyField="IdPlato" DataSourceID="Cenas" RepeatColumns="3">
                                    <ItemTemplate>
                                        IdPlato:
                                        <asp:Label ID="IdPlatoLabel" runat="server" Text='<%# Eval("IdPlato") %>' />
                                        <br />
                                        NombrePlato:
                                        <asp:Label ID="NombrePlatoLabel" runat="server" Text='<%# Eval("NombrePlato") %>' />
                                        <br />
                                        TipoPlato:
                                        <asp:Label ID="TipoPlatoLabel" runat="server" Text='<%# Eval("TipoPlato") %>' />
                                        <br />
                                        calorias:
                                        <asp:Label ID="caloriasLabel" runat="server" Text='<%# Eval("calorias") %>' />
                                        <br />
                                        <br />
                                        <asp:Image ID="Image3" runat="server" Height="276px" ImageUrl='<%# "~/images/"+Eval("imagen") %>' Width="398px"/>
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="Cenas" runat="server" ConnectionString="<%$ ConnectionStrings:DBANEMIAConnectionString4 %>" SelectCommand="SELECT * FROM [TPlato] WHERE ([TipoPlato] LIKE '%' + @TipoPlato + '%')">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="Cena" Name="TipoPlato" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:TextBox runat="server" Id="txtPreC" PlaceHolder="Ejm:P01" style="margin-left:auto;margin-right:auto;"/>
                                <asp:Button Text="Ver Ingredientes" runat="server" ID="btnPreC" OnClick="btnPreC_Click" style="margin-left:auto;margin-right:auto;"/>
                                <asp:MultiView ActiveViewIndex="0" ID="mvcenas" runat="server">
                                    <asp:View runat="server">

                                    </asp:View>
                                    <asp:View runat="server">
                                <asp:GridView runat="server" ID="gvDetalleC" style="margin-left:auto;margin-right:auto;"></asp:GridView>
                                        <asp:TextBox runat="server" Id="txtVerIngC" PlaceHolder="Ejm:A0001" style="margin-left:auto;margin-right:auto;"/>
                                <asp:Button Text="Ver Valor Nutricional" runat="server" ID="btnVerIngC" style="margin-left:auto;margin-right:auto;" OnClick="btnVerIngC_Click"/>
                                        <asp:MultiView ActiveViewIndex="0" ID="mvIngC" runat="server">  
                                    <asp:View runat="server">

                                    </asp:View> 
                                    <asp:View runat="server">
                                    <asp:GridView runat="server" ID="gvIngC" style="margin-left:auto;margin-right:auto;"></asp:GridView>
                                    </asp:View>
                                </asp:MultiView>
                                    </asp:View>
                                </asp:MultiView>
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
