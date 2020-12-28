<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="FeBlood.Prueba" %>

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
                        <th scope="col" >Detalle</th>
                    </tr>
                </thead>
                <tbody>


                    <tr>
                        <th scope="row">Mujeres</th>
                        <td></td>
                        <td>
                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("IdPlato") %>' />
                        </td>
                        <td>8 - 10.9</td>
                        <td>Menos de 8</td>
                        <td><img src="images/lupa.png"  width="30px" height="30px"/></td>
                    </tr>
                    <tr>
                        <th scope="row">Mujeres embarazadas</th>
                        <td>11 o superior</td>
                        <td>10 - 10.9</td>
                        <td>7 - 9.9</td>
                        <td>Menos de 7</td>
                        <td><img src="images/lupa.png"  width="30px" height="30px"/></td>
                    </tr>
                    <tr>
                        <th scope="row">Hombres</th>
                        <td>13.8 - 17.2</td>
                        <td>10 - 12.9</td>
                        <td>8 - 10.9</td>
                        <td>Menos de 8</td>
                        <td><img src="images/lupa.png"  width="30px" height="30px"/></td>
                    </tr>
                    <tr>
                        <th scope="row">Niños de (6 meses - 4 años)</th>
                        <td>11 o  superior</td>
                        <td>10 - 10.9</td>
                        <td>7 - 9.9</td>
                        <td>Menos de 7</td>
                        <td><img src="images/lupa.png"  width="30px" height="30px"/></td>
                    </tr>
                    <tr>
                        <th scope="row">Niños de (5 - 11 años)</th>
                        <td>11.5 o  superior</td>
                        <td>11 - 11.4</td>
                        <td>8 - 10.9</td>
                        <td>Menos de 8</td>
                        <td><img src="images/lupa.png"  width="30px" height="30px"/></td>
                    </tr>
                    <tr>
                        <th scope="row">Niños de (12 - 14 años)</th>
                        <td>12 o  superior</td>
                        <td>11 - 11.9</td>
                        <td>8 - 10.9</td>
                        <td>Menos de 8</td>
                        <td><img src="images/lupa.png"  width="30px" height="30px"/></td>
                    </tr>
                </tbody>
            </table>
        </div>
     </div>