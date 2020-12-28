<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FeBlood._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
        <div id="carousel" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#carousel" data-slide-to="0" class="active"></li>
                <li data-target="#carousel" data-slide-to="1"></li>
                <li data-target="#carousel" data-slide-to="2"></li>
                <li data-target="#carousel" data-slide-to="3"></li>
                <li data-target="#carousel" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/imagen5.jpg" alt="" />

                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="images/imagen1.jpg" alt="" />

                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="images/imagen2.jpg" alt="" />

                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="images/imagen3.jpg" alt="" />

                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="images/imagen4.jpg" alt="" />

                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

         <div class="col-md-3">
            <h2>¿Que es la anemia?</h2>
            <p>
                La anemia es una afección en la cual careces de suficientes glóbulos rojos sanos para transportar un nivel adecuado de oxígeno a los tejidos del cuerpo. La anemia puede hacer que te sientas cansado y débil.
                Existen muchas formas de anemia, cada una con su propia causa. La anemia puede ser temporal o prolongada y puede oscilar entre leve y grave. Consulta con el médico si sospechas que tienes anemia. Puede ser una señal de advertencia de una enfermedad grave.
                Los tratamientos para la anemia abarcan desde tomar suplementos hasta someterse a procedimientos médicos. Podrías prevenir algunos tipos de anemia si consumes una dieta saludable y variada. 
            </p>
             <p>
                 <a class="btn btn-primary" href="https://www.mayoclinic.org/es-es/diseases-conditions/anemia/symptoms-causes/syc-20351360">Mas Informacion &raquo;</a>
             </p>
        </div>
        <div class="col-md-3">
            <h2>Tipos de Anemia</h2>
            <p>
                <a href="https://www.mayoclinic.org/es-es/diseases-conditions/aplastic-anemia/symptoms-causes/syc-20355015"> Anemia Aplasica</a><br />
                <a href="https://www.mayoclinic.org/es-es/diseases-conditions/sickle-cell-anemia/symptoms-causes/syc-20355876"> Anemia de células falciformes</a><br />
                <a href="https://www.mayoclinic.org/es-es/diseases-conditions/iron-deficiency-anemia/symptoms-causes/syc-20355034"> Anemia por deficiencia de hierro</a><br />
                <a href="https://www.mayoclinic.org/es-es/diseases-conditions/vitamin-deficiency-anemia/symptoms-causes/syc-20355025"> Anemia por deficiencia de vitaminas</a><br />
                <a href="https://www.mayoclinic.org/es-es/diseases-conditions/thalassemia/symptoms-causes/syc-20354995"> Talasemia</a>
            </p>            
        </div>
        <div class="col-md-3">
            <h2>Sintomas</h2>
            <ul>
                <li>Fatiga</li>
                <li>Debilidad</li>
                <li>Piel pálida o amarillenta</li>
                <li>Latidos del corazón irregulares</li>
                <li>Dificultad para respirar</li>
                <li>Mareos o aturdimiento</li>
                <li>Dolor en el pecho</li>
                <li>Manos y pies fríos</li>
                <li>Dolores de cabeza</li>
            </ul>
            <p>
                <a class="btn btn-primary" href="https://www.mayoclinic.org/es-es/diseases-conditions/anemia/symptoms-causes/syc-20351360">Mas Informacion &raquo;</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Factores de riesgo</h2>
            <p>
                Estos factores te exponen a un mayor riesgo de anemia:
            </p>
            <ul>
                <li><strong>Una dieta que carece de ciertas vitaminas y minerales.</strong></li>
                <li><strong>Trastornos intestinales.</strong></li>
                <li><strong>Menstruación.</strong></li>
                <li><strong>Embarazo.</strong></li>
                <li><strong>Afecciones crónicas.</strong></li>
                <li><strong>Antecedentes familiares.</strong></li>
                <li><strong>La edad.</strong></li>
            </ul>
            <p>
                <a class="btn btn-primary" href="https://www.mayoclinic.org/es-es/diseases-conditions/anemia/symptoms-causes/syc-20351360">Mas Informacion &raquo;</a>
            </p>
        </div>
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

        <div class="col-md-6">
            <h2>¿Qué es la anemia?</h2>
            <p>
               <iframe width="100%" height="350" src="https://www.youtube.com/embed/c1HfkL_vm0Y" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </p>
        </div>
          <div class="col-md-6">
            <h2>Nuestra Aplicacion</h2>
            <p>
                <p style="text-align: justify">
        Con esta aplicación las personas podrán tener a la mano una guía alimenticia, 
        la cual les brindara la oportunidad de tener una alimentación balanceada sin costo alguno.
        El principal objetivo de esta aplicación es reducir los niveles de anemia en 
        la población mediante dietas específicas para cada sector de la población. Del 
        mismo modo, otro objetivo importante, es que las personas adopten una educación
        nutricional para poder mantener un estilo de vida sano. 

    </p>
            </p>
            <p>
                <a class="btn btn-primary" href="About.aspx">Más información  &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
