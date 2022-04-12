<%-- 
    Document   : index
    Created on : 30 abr. 2020, 9:14:16
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

        <!--Inicio del contenido-->
	<div class="main_container">
	<div class="container">
	<div class="content" style="z-index: 2;">
        
            <div id="carouselExampleIndicators" class="carousel slide"  data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                  <img src="images/1.png" class="d-block w-100" height="400" alt="...">
              </div>
              <div class="carousel-item">
                <img src="images/2.jpg" class="d-block w-100" height="400" alt="...">
              </div>
              <div class="carousel-item">
                <img src="images/3.png" class="d-block w-100" height="400" alt="...">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
                       
          <br>     
          <br>
          <div class="text-muted">
           <h3>Delimitacion</h3>
           <p class="text-justify">
           Frente al problema planteado, el proyecto de residencias que se propone, consiste en 
           desarrollar un conjunto de “Microservicios” para sistema de gestión de la innovación que 
           aproveche la información almacenada en un repositorio o base de conocimientos a través un
           tablero de indicadores; que representen la productividad de los investigadores.
           <p id="contenido1" style="display: none;">Este sistema 
           será construido con tecnología de Microservicios y una arquitectura de tres capas, la vista, 
           el modelo y el controlador que permitan alcanzar autonomía y suficiencia para metas de valor del negocio.
           La complejidad radica en construir los Microservicios que representen la lógica del negocio 
           como caso de prueba, será usado para la gestión de la innovación del CENIDET) que automaticen
           el proceso de gestión de la información.</p>
           <button type="button" class="btn btn-secondary" id="botonOn" onclick="FbotonOn()"> Mostrar </button> 
           </p>
                           
           <br>
           <h3>Planteamiento del problema</h3>
           <p class="text-justify">
           En muchas organizaciones académicas similares al CENIDET, su conocimiento se genera a 
           través de la gestión de la innovación, con actividades de desarrollo de proyectos de tesis, 
           publicaciones, conferencias, cursos, etc.; siendo ésta una información relativamente grande. 
           <p id="contenido2" style="display: none;">En la algunas de las instituciones de investigación, son los investigadores los que plasman 
           en documentos con formatos específicos y no estructurados la información de su producción 
           académica, con el propósito de recopilarla y organizarla según criterios individuales. 
           La transferencia de archivos tradicionalmente se hace por correo electrónico. 
           El problema se presenta en la carencia de confiablidad de la información o conocimiento de la 
           organización debido a que los datos están ubicados en diferentes lugares, lo que ocasiona 
           redundancia e inconsistencia, traduciéndose en pérdida de tiempo al gestionar el conocimiento 
           para presentar o formular indicadores y estadísticas de desempeño de la organización para la 
           toma de decisiones.</p>
           <button type="button" class="btn btn-secondary" id="botonOn2" onclick="FbotonOn2()"> Mostrar </button> 
           </p>
                           
            <br>
            <h3>Justificacion</h3>
            <p class="text-justify">
            En un mundo competitivo tal como el actual,  las organizaciones de negocios han considerado 
            importantes los conocimientos, experiencias y habilidades que tienen las personas dentro de 
            la organización. “Los conocimientos y características de una organización que quieran ser 
            transmitidas del pasado a los futuros miembros del sistema social de la empresa, solamente 
            es posible si se tiene la memoria organizacional”. Este conocimiento es llamado “conocimiento 
            corporativo” o “genes corporativos.”  
            <p id="contenido3" style="display: none;">Los repositorios permiten compartir el conocimiento 
            incluso cuando los individuos que lo crearon ya no pertenezcan a la organización.
            En organizaciones dedicadas a la gestión de la innovación que contribuyen al desarrollo 
            tecnológico sustentable a través de la formación de investigadores en el ámbito académico, 
            industrial y de investigación tecnológica, y dadas las actividades de investigación tienen 
            como objeto producir nuevos conocimientos y desarrollo de tecnología, así como de su 
            divulgación a través de proyectos de tesis, publicaciones, conferencias, proyectos de 
            desarrollo tecnológico, patentes, registro de autor, etc. Esta información se puede almacenar, 
            organizar y consultar en una base de conocimientos.
            La mayoría de esta información es explotada mediante sistemas de tecnologías de información, 
            tales como aplicaciones Web y modelos que comúnmente siguen arquitecturas  monolíticas o 
            clásicas. En muchas ocasiones en arquitecturas monolíticas existen dependencias entre las  
            funciones que colaboran para satisfacer los requerimientos del cliente.
            El proyecto de residencias que se propone en este documento, consiste en desarrollar un 
            conjunto de “Microservicios” para un sistema de gestión de la innovación que aproveche la 
            información almacenada en un repositorio o base de conocimientos a través un “tablero de 
            indicadores”; que permita a los investigadores del CENIDET y socios involucrados, una manera 
            fácil de representar información de los productos de investigación por personas, grupos de 
            personas, lideres de proyectos,  departamentos e institución, para dar respuesta oportuna a 
            las instituciones que requieren esta información y que para dar soporte a la toma de 
            decisiones en busca de una mejora continua de los procesos de gestión de la innovación.</p>
           <button type="button" class="btn btn-secondary" id="botonOn3" onclick="FbotonOn3()"> Mostrar </button> 
            </p>
            </div>  
          
          
            </div>
	    </div>
	</div>
        <!--Fin del contenido-->
</div>

    <script>
function FbotonOn() {
  var uno = document.getElementById('botonOn');
  if (uno.innerHTML == 'Ocultar') {
       uno.innerHTML = 'Mostrar';
       document.getElementById("contenido1").style.display="none";
  }
   else{
     uno.innerHTML = 'Ocultar'; 
     document.getElementById("contenido1").style.display="block";  
   }
}

function FbotonOn2() {
 var dos = document.getElementById('botonOn2');
  if (dos.innerHTML == 'Ocultar') {
       dos.innerHTML = 'Mostrar';
       document.getElementById("contenido2").style.display="none";
  }
   else{
     dos.innerHTML = 'Ocultar'; 
     document.getElementById("contenido2").style.display="block";  
   }}
   
function FbotonOn3() {
     var tres = document.getElementById('botonOn3');
  if (tres.innerHTML == 'Ocultar') {
       tres.innerHTML = 'Mostrar';
       document.getElementById("contenido3").style.display="none";
  }
   else{
     tres.innerHTML = 'Ocultar'; 
     document.getElementById("contenido3").style.display="block";  
   }
}
</script>   
<script src="js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>
