<%-- 
    Document   : Tableros_alumno
    Created on : 14 may. 2020, 8:59:16
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
        
        <%@ page import = "java.io.*" %> 
        <%@ page import = "java.util.*" %> 
        <%
           String num_control=(String)request.getAttribute("num");
           String nombreC=new String(request.getParameter("nombreC").getBytes("iso-8859-1"),"UTF-8");
        %>

        <!--Inicio del contenido-->
	<div class="main_container">
	<div class="container">
	<div class="content" style="z-index: 2; height: 100vh; min-width: 400px;">
        <h2 class="text-muted"><i class="fas fa-user-graduate"></i> Tableros de alumnos</h2>
        <hr class="color-secondary">
        
        <div class="table-responsive" style="height: 85%;">
        <p class="text-muted mx-3"><i class="fas fa-user-graduate"></i> <%=nombreC%></p>
        
        <div class="row row-cols-3">
        <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
        <div class="card mb-4 mx-3" style="max-width: 18rem; width: 265px; border: 1px solid #02DA5A;">
        <div class="card-body text-white" style="background:#02DA5A;">
        <p class="card-title text-center" style="font-size: 60px;"><i class="fas fa-laptop-code"></i>
        <%=request.getAttribute("countProy")%></p>
        <p class="card-text text-center">Proyectos asignados</p>
        </div>
        <a href="./Tableros_proyectos_alumno?num=<%=num_control%>" role="button" class="<%=request.getAttribute("bloProy")%> btn text-center text-success card-footer bg-transparent" style="border: 1px solid #02DA5A;">Ver proyectos</a>
        </div></div>
        
        <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
        <div class="card mb-4 mx-3" style="max-width: 18rem; width: 265px; border: 1px solid #FE5656;">
        <div class="card-body text-white" style="background:#FE5656;">
        <p class="card-title text-center" style="font-size: 60px;"><i class="far fa-list-alt"></i>
        <%=request.getAttribute("countPub")%></p>
        <p class="card-text text-center">Publicaciones asignadas</p>
        </div>
        <a href="./Tableros_publicaciones_alumno?num=<%=num_control%>" role="button" class="<%=request.getAttribute("bloPub")%> btn text-center text-danger card-footer bg-transparent" style="border: 1px solid #FE5656;">Ver publicaciones</a>
        </div></div>
        
        <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
        <div class="card mb-4 mx-3" style="max-width: 18rem; width: 265px; border: 1px solid #FFC143;">
        <div class="card-body text-white" style="background:#FFC143;">
        <p class="card-title text-center" style="font-size: 60px;"><i class="fas fa-book-reader"></i>
        <%=request.getAttribute("countInfrep")%></p>
        <p class="card-text text-center">Informes asignados</p>
        </div>
        <a href="./Tableros_informes_alumno?num=<%=num_control%>" role="button" class="<%=request.getAttribute("bloInfrep")%> btn text-center text-warning card-footer bg-transparent" style="border: 1px solid #FFC143;">Ver informes</a>
        </div></div>
        
        <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
        <div class=" card mb-4 mx-3" style="max-width: 18rem; width: 265px; border: 1px solid #3FBAE8;">
        <div class="card-body text-white" style="background:#3FBAE8;">
        <p class="card-title text-center" style="font-size: 60px;"><i class="fas fa-laptop"></i>
        <%=request.getAttribute("countSoft")%></p>
        <p class="card-text text-center">Software asignados</p>
        </div>
        <a href="./Tableros_software_alumno?num=<%=num_control%>" role="button" class="<%=request.getAttribute("bloSoft")%> btn text-center text-info card-footer bg-transparent" style="border: 1px solid #3FBAE8;">Ver software</a>
        </div></div>
        
         <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
        <div class=" card mb-4 mx-3" style="max-width: 18rem; width: 265px; border:1px solid #A0A6B3;">
        <div class="card-body text-white" style="background:#A0A6B3;">
        <p class="card-title text-center" style="font-size: 60px;"><i class="far fa-sticky-note"></i>
        <%=request.getAttribute("countPat")%></p>
        <p class="card-text text-center">Patentes asignadas<br></p>
        </div>
        <a href="./Tableros_patentes_alumno?num=<%=num_control%>" role="button" class="<%=request.getAttribute("bloPat")%> btn text-center text-secondary card-footer bg-transparent" style="border:1px solid #A0A6B3;">Ver patentes</a>
        </div></div>
        
         <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
        <div class=" card mb-4 mx-3" style="max-width: 18rem; width: 265px; border: 1px solid #545454;">
        <div class="card-body text-white" style="background:#545454;">
        <p class="card-title text-center" style="font-size: 60px;"><i class="fas fa-address-card"></i>
        <%=request.getAttribute("countDcho")%></p>
        <p class="card-text text-center">Derechos asignados</p>
        </div>
        <a href="./Tableros_derechos_autor_alumno?num=<%=num_control%>" role="button" class="<%=request.getAttribute("bloDcho")%> btn text-center text-dark card-footer bg-transparent" style="border: 1px solid #545454;">Ver derechos de autor</a>
        </div></div>
        </div>
 
        </div> 
        </div>  
        </div>    
        </div>
        <!--Fin del contenido-->
</div>

<script src="js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>


