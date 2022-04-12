<%-- 
    Document   : Tableros_cuerpos_red_colaboracion
    Created on : 26 may. 2020, 9:23:02
    Author     : laloa
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tableros de indicadores</title>   	
        <link  rel="icon"   href="images/icono.png" type="image/png" />
         <script src="js/all.js"></script>
         <link rel="stylesheet" href="css/all.min.css">
         <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
         <link rel="stylesheet" href="css/font.css">
         <link rel="stylesheet" href="css/styles.css">
         <style>
             .busqueda:hover{
                 background:#4973B8 !important;
             } 
             
             .pdf:hover{
                 background:#D54D4D !important;
             }
             
             .graficas:hover{
                 background:#E3AF46 !important; 
             }
             
             .resumen:hover{
                background:#2EB8AA !important; 
             }
             
         </style>
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
	<div class="main_container">
	<div class="container">
	<div class="content" style="z-index: 2; height: 100vh; min-width: 650px;">
        <h2 class="text-muted"><i class="fas fa-broadcast-tower"></i> Cuerpos academicos de redes en colaboracion</h2>
        <hr class="color-secondary">
        <%@ page import = "java.io.*" %> 
        <%@ page import = "java.util.*" %>
        <%@ page import = "java.util.Date" %>
        <%@ page import = "java.sql.*" %> 
        <%@ page import = "ConnexionDB.Conexion" %> 
        
        <%
        int conteoRegDep=(Integer)request.getAttribute("conteoRegDep");
        int conteoRegDep2=(Integer)request.getAttribute("conteoRegDep2");
        int conteoRegCuerpo=(Integer)request.getAttribute("conteoRegCuerpo");
        int conteoRegCuerpo2=(Integer)request.getAttribute("conteoRegCuerpo2");
        
        String RedNombres[]=(String [])request.getAttribute("RedNombresCuerpo");
        String nombre[]=(String [])request.getAttribute("nombreCuerpo");
        String jefe[]=(String [])request.getAttribute("jefeCuerpo");
        String linea[]=(String [])request.getAttribute("lineaCuerpo");
        String opcBordeCuerpo[]=(String [])request.getAttribute("opcBordeCuerpo"); 
        
        String nombresDep[]=(String [])request.getAttribute("nombresDep");
        int numDep[]=(int [])request.getAttribute("numDep");
        String nombresCuerpo[]=(String [])request.getAttribute("nombresCuerpo");
        int numCuerpo[]=(int [])request.getAttribute("numCuerpo");
        
        int numRegistros[]=new int[2];
        numRegistros[0]=numDep[0];
        numRegistros[1]=numCuerpo[0];
        

        String nombresRegistros[]=new String[2];
        nombresRegistros[0]="Departamentos";
        nombresRegistros[1]="Cuerpo academicos";
        
        int conteoTotal=(conteoRegDep+conteoRegCuerpo);    
            
        
        %>
        
        <div class="form-inline row my-2">
            
        <form method="POST" action="./Reportes_cuerpos_redes_colaboracionales">
        <input type="hidden" name="conteoReg" id="conteoReg" value="<%=conteoRegCuerpo%>"> 
        <input type="hidden" name="conteoReg2" id="conteoReg2" value="<%=conteoRegCuerpo2%>">
        <%for(int i=0; i<conteoRegCuerpo2; i++){%>
        <input type="hidden" name="nombres<%=i%>" value="<%=nombresCuerpo[i]%>">
        <input type="hidden" name="numRegistros<%=i%>" value="<%=numCuerpo[i]%>">
        <%}%>
        <%for(int i=0; i<conteoRegCuerpo; i++){%>
        <input type="hidden" name="nombre<%=i%>" value="<%=nombre[i]%>">
        <input type="hidden" name="jefe<%=i%>" value="<%=jefe[i]%>">
        <input type="hidden" name="linea<%=i%>" value="<%=linea[i]%>">
        <%}%>
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn pdf" id="pdf" style="background:#FE5D5D; color: #fff;" title="Convertir en pdf">
        <i class="far fa-file-pdf"></i></button>
        </div>
        </form> 
            
        <form method="POST" action="./Graficas_tableros_red_colaboracion">
        <input type="hidden" name="conteoReg2" value="<%=nombresRegistros.length%>">
        <input type="hidden" name="conteo" value="<%=nombresRegistros.length%>">
        <input type="hidden" name="conteoTotal" id="conteoTotal" value="<%=conteoTotal%>">
        <input type="hidden" name="Departamento" id="Departamento" value="<%=(String)request.getAttribute("nombreC")%>">
        <input type="hidden" name="tituloG" value="Asignados">
        <%for(int i=0; i<nombresRegistros.length; i++){%>
        <input type="hidden" name="nombres<%=i%>" value="<%=nombresRegistros[i]%>">
        <input type="hidden" name="numRegistros<%=i%>" value="<%=numRegistros[i]%>">
        <%}%>
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn graficas" id="graficas" style="background:#FEC44F; color: #fff;" title="Mostrar grafica">
        <i class="fas fa-chart-bar"></i></button>
        </div>
        </form>     
        </div>   
       

       <div class="table-responsive" style="height: 70%; min-width: 600px;">
       <table class="table table-hover table-borderless" style="">
       <thead style="background: #30B5A8; color: #fff;">
       <tr>
       <th scope="col" class="text-left">Red</th>
       <th scope="col" class="text-left">Cuerpo academico</th>
       <th scope="col" class="text-left">Jefe</th>
       <th scope="col" class="text-left">Linea</th>
       </tr>
       </thead>
      <tbody>
      <%for(int i=0; i<conteoRegCuerpo; i++){%>
      <tr class="<%=opcBordeCuerpo[i]%>">
      <td class="text-left"><%=RedNombres[i]%></td>
      <td class="text-left"><%=nombre[i]%></td>
      <td class="text-left"><%=jefe[i]%></td>
      <td class="text-left"><%=linea[i]%></td>
     </tr>
      <%}%>
      </tbody>
      </table>
       </div> 
      <br>
      <div class="text-muted">Total de asignaciones: <input type="text" class="text-center" value="<%=conteoRegDep%>" size=2 readonly></div> 
       </div>  
       </div>    
       </div>
       <!--Fin del contenido-->
</div>

<!--Script para bloquear botones si el numero de registros es 0-->       
<script>
 var conteoReg=document.getElementById('conteoReg').value;
 if(conteoReg==0){
 document.getElementById('pdf').disabled=true;
 document.getElementById('graficas').disabled=true; 
 }           
</script>   
   
<script src="js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>



