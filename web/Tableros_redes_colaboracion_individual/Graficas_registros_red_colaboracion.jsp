<%-- 
    Document   : Graficas_registros_red_colaboracion
    Created on : 25 may. 2020, 11:37:08
    Author     : laloa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tableros de indicadores</title>   	
        <link  rel="icon"   href="images/icono.png" type="image/png" />
        <script src="js/all.js"></script>
        <script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>
        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/styles.css">
</head>
<body>
	
<!--Inicio de titulo horizontal-->   
<div class="wrapper hover_collapse">
    <div class="top_navbar" style="z-index: 3;">
           <div class="logo form-inline"> <a href="../Tableros_indicadores" style="text-decoration: none; color:#fff;"><i class="fab fa-accusoft"></i>Cenidet</a></div>
		<div class="menu">
		<div class="hamburger">
		<i class="fas fa-arrows-alt-h"></i>
		</div>
               <p class=" titulo mr-auto mx-2 my-auto"><i class="fas fa-chart-area"></i>Tableros de indicadores</p>
	<div class="profile_wrap">
            <div class="profile">
             <a href="https://www.facebook.com/TecNMCenidet.mx/" class="mx-1" target="_blank"><button type="button" class="btn btn-outline-light" style="border-radius: 30px;"><i class="fab fa-facebook-square" style="font-size: 25px;"></i></button></a>
             <a href="https://twitter.com/CENIDET?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" class="mx-1" target="_blank"><button type="button" class="btn btn-outline-light" style="border-radius: 30px;"><i class="fab fa-twitter" style="font-size: 25px;"></i></button></a>
             <a href="https://www.youtube.com/channel/UCppsS5lV2CKqImeHeLt5zgw" class="mx-1" target="_blank"><button type="button" class="btn btn-outline-light" style="border-radius: 30px;"><i class="fab fa-youtube" style="font-size: 25px;"></i></button></a>
             <a href="https://www.instagram.com/cenidet_oficial/?hl=es-la" class="mx-1" target="_blank"><button type="button" class="btn btn-outline-light" style="border-radius: 30px;"><i class="fab fa-instagram" style="font-size: 25px;"></i></button></a>
             <a href="https://www.tecnm.mx/" target="_blank"> <img src="images/logo.png" alt="profile_pic" height="70" width="160"></a>
            </div>
	</div>
                </div>
    </div>
<!--Fin de titulo horizontal-->  

                 <!--Inicio de menu vertical-->
                <div class="sidebar" style="z-index: 3;">
		<div class="sidebar_inner">
                    
		<ul>
                <li>
		<a href="../Tableros_indicadores">
		<span class="icon"><i class="fas fa-align-justify"></i></span>
		<span class="text text-white">Inicio</span>
                </a>
		</li>
		<li>    
                    
		<li class="dropright" >
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" >
		<span class="icon"><i class="fas fa-user-graduate"></i></span>
		<span class="text text-white">Alumnos</span>
		</a>
                <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="./Tableros_alumnos"><i class="fas fa-paste"></i> Ver tableros de alumnos</a>
                <a class="dropdown-item" href="./Busqueda_alumno"><i class="fas fa-search"></i> Buscar alumno</a>
                </div>
                </li>
                
                <li class="dropright">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
		<span class="icon"><i class="fas fa-chalkboard-teacher"></i></span>
		<span class="text text-white">Profesores</span>
		</a>
                 <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="./Tableros_profesores"><i class="fas fa-paste"></i> Ver tableros de profesores</a>
                <a class="dropdown-item" href="./Busqueda_profesor"><i class="fas fa-search"></i> Buscar profesor</a>
                </div>
                </li>
                
                <li class="dropright">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
		<span class="icon"><i class="fas fa-file-import"></i></span>
		<span class="text text-white">Lineas de investigacion</span>
		</a>
                 <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="./Tableros_lineas_investigacion"><i class="fas fa-paste"></i> Ver tableros de lineas de investigacion</a>
                <a class="dropdown-item" href="./Busqueda_linea"><i class="fas fa-search"></i> Buscar linea de investigacion</a>
                </div>
                </li>
                
                 <li class="dropright">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
		<span class="icon"><i class="fas fa-broadcast-tower"></i></span>
		<span class="text text-white">Redes en colaboracion</span>
		</a>
                <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="./Tableros_redes_colaboracionales"><i class="fas fa-paste"></i> Ver tableros de redes en colaboracion</a>
                <a class="dropdown-item" href="./Busqueda_red_colaboracion"><i class="fas fa-search"></i> Buscar red en colaboracion</a>
                </div>
                </li>
                
                 <li class="dropright">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
		<span class="icon"><i class="fas fa-school"></i></span>
		<span class="text text-white">Instituciones</span>
		</a>
                 <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="./Tableros_instituciones"><i class="fas fa-paste"></i> Ver tableros de instituciones</a>
                <a class="dropdown-item" href="./Busqueda_institucion"><i class="fas fa-search"></i> Buscar institucion</a>
                </div>
                </li>
                
                 <li class="dropright">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
		<span class="icon"><i class="fas fa-archive"></i></span>
		<span class="text text-white">Cuerpos academicos</span>
		</a>
                 <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="./Tableros_cuerpos_academicos"><i class="fas fa-paste"></i> Ver tableros de cuerpos academicos</a>
                <a class="dropdown-item" href="./Busqueda_cuerpo_academico"><i class="fas fa-search"></i> Buscar cuerpo academico</a>
                </div>
                </li>
                
                    		
		</ul>
		</div>
	</div>
        <!--Fin de menu vertical-->    
        
         <!--Inicio del contenido-->
           <%@ page import = "java.io.*" %> 
        <%@ page import = "java.util.*" %>
        <%@ page import = "java.sql.*" %> 
        <%@ page import = "ConnexionDB.Conexion" %> 
     
        <%
        int conteoReg2=(Integer)request.getAttribute("conteoReg2");
        String nombres[]=(String [])request.getAttribute("nombres");
        int numRegistros[]=(int [])request.getAttribute("numRegistros");
        String titulog=(String)request.getAttribute("tituloG");
        %>
         
	<div class="main_container">
	<div class="container">
	<div class="content" style="z-index: 2; height: 110vh; min-width: 650px;">
        <h3 class="text-muted"><i class="fas fa-broadcast-tower"></i> Graficas de registros</h3>
        <hr class="color-secondary">      

        <form class="form-inline">
        <input type="hidden" id="tituloG" value="<%=titulog%>">    
        <input type="hidden" id="conteoReg2" value="<%=conteoReg2%>">
        <%for(int i=0; i<conteoReg2; i++){%>
        <input type="hidden" id="nombres<%=i%>" value="<%=nombres[i]%>">
        <input type="hidden" id="numRegistros<%=i%>" value="<%=numRegistros[i]%>">
        <%}%>
        <div class="form-group">
        <label class="text-muted mr-2">Selecciona un tipo de grafica</label>
       <select name="select" id="comboBox" class="form-control" onchange="Graficas(this.value)" style="background: #30B5A8; color: #fff;">
       <option value="value1">Selecciona una opcion</option> 
       <option value="Barra">Barra</option>
       <option value="Pastel">Pastel</option>
       <option value="Dona">Dona</option>
       <option value="Polar">Polar</option>
       <option value="Radar">Radar</option>
       <option value="Linea">Linea</option>
       </select>  
       </div>
       </form>
        
        <div class="form-inline my-2">
          <p class="text-muted"><%=(String)request.getAttribute("registro")%>, total de asignaciones <%=(Integer)request.getAttribute("conteoTotal")%></p>
        </div>
       
       <div class="table-responsive mt-auto" style="height: 80%;">
        <div id="canvas-container" style="position: relative;">
        <center><canvas id="chart"></canvas></center>
	</div>
 
       </div> 
       </div>  
       </div>    
       </div>
       <!--Fin del contenido-->
</div>

 <script>
     
        /*Obtencion de valores de registros*/ 
      var tituloG=document.getElementById('tituloG').value;
      var conteoR=document.getElementById('conteoReg2').value;
      var nombres=new Array(conteoR);
      var numRegistros=new Array(conteoR);
          
       for(var i=0; i<conteoR; i++){
       nombres[i]=document.getElementById('nombres'+i).value;
       numRegistros[i]=document.getElementById('numRegistros'+i).value;
       }  
     
      function Graficas(v){
          
          /*Realizacion de colores random*/
        var graphColors = [];
        var graphOutlines = [];
        var hoverColor = [];
        var internalDataLength = conteoR;
        i = 0;
        while (i <= internalDataLength) {
        var randomR = Math.floor((Math.random() * 130) + 90);
        var randomG = Math.floor((Math.random() * 130) + 100);
        var randomB = Math.floor((Math.random() * 130) + 120);
  
        var graphBackground = "rgb(" 
            + randomR + ", " 
            + randomG + ", " 
            + randomB + ")";
        graphColors.push(graphBackground);
    
        var graphOutline = "rgb(" 
            + (randomR - 80) + ", " 
            + (randomG - 80) + ", " 
            + (randomB - 80) + ")";
        graphOutlines.push(graphOutline);
    
        var hoverColors = "rgb(" 
            + (randomR + 25) + ", " 
            + (randomG + 25) + ", " 
            + (randomB + 25) + ")";
        hoverColor.push(hoverColors);
    
        i++;
        };  
          
        if(v=='Barra'){
        var ctx= document.getElementById("chart").getContext("2d");  
        var datos={
        type:"bar",
        data:{
        responsive: true,
        maintainAspectRatio: false,  
        labels:nombres,
        datasets:[{
        label:tituloG,
        data:numRegistros,
        backgroundColor:graphColors
        }]},
        options:{
        scales:{
        yAxes:[{
        ticks:{
        beginAtZero:true
        }}]
        },
        tooltips: {
        backgroundColor:"rgba(0,0,0,.7)",
        titleFontSize:12,
        bodyFontSize:14,
        }
        }
        }; 
        
        if (window.grafica) window.grafica.destroy();
        window.grafica= new Chart(ctx,datos);
        }
        
        else if(v=='Pastel'){  
        var ctx= document.getElementById("chart").getContext("2d");  
        var datos={
        type:"pie",
        data:{
        responsive: true,
        maintainAspectRatio: false, 
        labels:nombres,
        datasets:[{
        label:tituloG,
        data:numRegistros,
        backgroundColor:graphColors
        }]},
        options:{
        scales:{
        yAxes:[{
        ticks:{
        beginAtZero:true
        }}]
        },
        tooltips: {
        backgroundColor:"rgba(0,0,0,.7)",
        titleFontSize:12,
        bodyFontSize:14,
        callbacks: {
        title: function(tooltipItem, data) {
        return data['labels'][tooltipItem[0]['index']];
        },
        label: function(tooltipItem, data) {
          return ""+tituloG+": "+ data['datasets'][0]['data'][tooltipItem['index']];
        },
        } 
        }
        }
        }; 
        
        if (window.grafica) window.grafica.destroy();
        window.grafica= new Chart(ctx,datos);
        }
          
        else if(v=='Dona'){  
        var ctx= document.getElementById("chart").getContext("2d");  
        var datos={
        type:"doughnut",
        data:{
        responsive: true,
        maintainAspectRatio: false,     
        labels:nombres,
        datasets:[{
        label:tituloG,
        data:numRegistros,
        backgroundColor:graphColors
        }]},
        options:{
        scales:{
        yAxes:[{
        ticks:{
        beginAtZero:true
        }}]
        },
        tooltips: {
        backgroundColor:"rgba(0,0,0,.7)",
        titleFontSize:12,
        bodyFontSize:14,
        callbacks: {
        title: function(tooltipItem, data) {
        return data['labels'][tooltipItem[0]['index']];
        },
        label: function(tooltipItem, data) {
          return ""+tituloG+": "+ data['datasets'][0]['data'][tooltipItem['index']];
        },
        } 
        }
        }
        }; 
        
        if (window.grafica) window.grafica.destroy();
        window.grafica= new Chart(ctx,datos);
        }
        
        else if(v=='Radar'){
        var nombres2=new Array(conteoR+1);
        var numRegistros2=new Array(conteoR+1);
        
        numRegistros2[0]=0;
        nombres2[0]='Valor minimo';
        var x=0;
        for(var i=1; i<=conteoR; i++){
        nombres2[i]=document.getElementById('nombres'+x).value;
        
        numRegistros2[i]=document.getElementById('numRegistros'+x).value;
        x++;
        }
        
        var randomR2 = Math.floor((Math.random() * 130) + 130);
        var randomG2 = Math.floor((Math.random() * 130) + 100);
        var randomB2 = Math.floor((Math.random() * 130) + 120);
            
        var ctx= document.getElementById("chart").getContext("2d");  
        var datos={
        type:"radar",
        data:{
        responsive: true,
        maintainAspectRatio: false,    
        labels:nombres2,
        datasets:[{
        label:tituloG,
        pointBackgroundColor:"#E5E5E6",
        data:numRegistros2,
        backgroundColor:"rgba(" 
            + randomR2 + ", " 
            + randomG2 + ", " 
            + randomB2 + ",.5)",
         borderColor: "rgb(" 
            + randomR2 + ", " 
            + randomG2 + ", " 
            + randomB2 + ")"
        }]},
        options:{
        scales:{
        yAxes:[{
        ticks:{
        beginAtZero:true
        }}]
        },
        tooltips: {
        backgroundColor:"rgba(0,0,0,.7)",
        titleFontSize:12,
        bodyFontSize:14,
        callbacks: {
        title: function(tooltipItem, data) {
        return data['labels'][tooltipItem[0]['index']];
        },
        label: function(tooltipItem, data) {
          return ""+tituloG+": "+ data['datasets'][0]['data'][tooltipItem['index']];
        },
        } 
        }
        }
        }; 
        
        if (window.grafica) window.grafica.destroy();
        window.grafica= new Chart(ctx,datos);
        }
        
        else if(v=='Linea'){
        var randomR2 = Math.floor((Math.random() * 130) + 130);
        var randomG2 = Math.floor((Math.random() * 130) + 100);
        var randomB2 = Math.floor((Math.random() * 130) + 120);
        
        var ctx= document.getElementById("chart").getContext("2d");  
        var datos={
        type: 'line',
        data: {
        responsive: true,
        maintainAspectRatio: false,     
        labels: nombres,
        datasets: [{ 
        data: numRegistros,
        pointBackgroundColor:"#E5E5E6",
        label: tituloG,
        backgroundColor:"rgba(" 
            + randomR2 + ", " 
            + randomG2 + ", " 
            + randomB2 + ",.5)",
        borderColor: "rgb(" 
            + randomR2 + ", " 
            + randomG2 + ", " 
            + randomB2 + ")"
        }]},
       options:{
        scales:{
        yAxes:[{
        ticks:{
        beginAtZero:true
        }}]
        },
        tooltips: {
        backgroundColor:"rgba(0,0,0,.7)",
        titleFontSize:12,
        bodyFontSize:14,
        }
        }
        };
        
        if (window.grafica) window.grafica.destroy();
        window.grafica= new Chart(ctx,datos);
        }
        
         else if(v=='Polar'){    
        var ctx= document.getElementById("chart").getContext("2d");  
        var datos={
        type:"polarArea",
        data:{
        responsive: true,
        maintainAspectRatio: false, 
        labels:nombres,
        datasets:[{
        label:tituloG,
        data:numRegistros,
        backgroundColor:graphColors
        }]},
        options:{
        scales:{
        yAxes:[{
        ticks:{
        beginAtZero:true
        }}]
        },
        tooltips: {
        backgroundColor:"rgba(0,0,0,.7)",
        titleFontSize:12,
        bodyFontSize:14,
        callbacks: {
        title: function(tooltipItem, data) {
        return data['labels'][tooltipItem[0]['index']];
        },
        label: function(tooltipItem, data) {
          return ""+tituloG+": "+ data['datasets'][0]['data'][tooltipItem['index']];
        },
        } 
        }
        }
        }; 
        
        if (window.grafica) window.grafica.destroy();
        window.grafica= new Chart(ctx,datos);
        }
      }
      
    </script>       
        
<script src="js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>



