<%-- 
    Document   : Busqueda_alumno
    Created on : 14 may. 2020, 8:43:09
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
        <form class="form-inline justify-content-between">
        <h2 class="text-muted"><i class="fas fa-user-graduate"></i> Busqueda de alumno</h2>
        <input type="hidden" name="reseteo" value="yes">
        <button type="submit" class="btn busqueda" style="background:#5D96F5; color: #fff;" title="Reiniciar registros">
        <i class="fas fa-undo-alt"></i></button>
        </form>
        <hr class="color-secondary">
        <%@ page import = "java.io.*" %> 
        <%@ page import = "java.util.*" %>
        <%@ page import = "java.util.Date" %>
        <%@ page import = "java.sql.*" %> 
        <%@ page import = "ConnexionDB.Conexion" %> 
        
        <%
        /*Declaramos las variables u objetos*/
        String num_control[]=null;
        String nombres[]=null;
        String correo[]=null;
        String tipo_alumno[]=null;
        String clave_linea[]=null;
        Conexion c=new Conexion();
        Connection con=null;
        con=c.ConexionBD();
        Statement st=null;
        ResultSet rs=null;
        Statement stConteo=null;
        ResultSet rsConteo=null;
        int conteoReg=0;
        String campoBusqueda=request.getParameter("BusquedaReg");
        
        if(campoBusqueda==null){ 
        num_control=(String [])request.getAttribute("num_control");
        nombres=(String [])request.getAttribute("nombres");
        correo=(String [])request.getAttribute("correo");
        tipo_alumno=(String [])request.getAttribute("tipo");
        clave_linea=(String [])request.getAttribute("clave_linea");
         conteoReg=num_control.length;
        }

        else if(campoBusqueda!=null){ 
        num_control=null;
        nombres=null;
        correo=null;
        tipo_alumno=null;
        clave_linea=null;   
         stConteo=con.createStatement();
         rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno where nombre='"+campoBusqueda+"' or numero_control='"+campoBusqueda+"' or clave_linea='"+campoBusqueda+"' order by nombre");
         st=con.createStatement();
         rs=st.executeQuery("select numero_control, nombre, apellido_p, apellido_m, correo, tipo_alumno, clave_linea from usuario_alumno where nombre='"+campoBusqueda+"' or numero_control='"+campoBusqueda+"' or clave_linea='"+campoBusqueda+"' order by nombre");             
         
         /*Obtenemos el total de registros de la consulta*/
        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        num_control=new String[conteoReg];
        nombres=new String[conteoReg];
        correo=new String[conteoReg];
        tipo_alumno=new String[conteoReg];
        clave_linea=new String[conteoReg];
        
        if(conteoReg>0){
        int x=0;
        while(rs.next()){
            num_control[x]=rs.getString(1);
            nombres[x]=rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
            correo[x]=rs.getString(5);
            tipo_alumno[x]=rs.getString(6);
            clave_linea[x]=rs.getString(7);
            x++;
        }
         rs.beforeFirst();
        
        }    
        }
        %>
        
        <div class="form-inline row">
        <form class="form-inline">     
        <div class="form-group ml-3 mb-2">
            <input type="text" class="form-control" size="28" placeholder="Ingrese informacion de busqueda" name="BusquedaReg" id="fecha_final" title="Ingrese la informacion de busqueda" required>
        </div>
         
        <input type="hidden" id="conteoReg" value="<%=conteoReg%>">    
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn busqueda" style="background:#5D96F5; color: #fff;" title="Buscar">
        <i class="fas fa-search"></i></button>
        </div>
        </form>
        </div>   
       

       <div class="table-responsive" style="height: 70%; min-width: 600px;">
       <table class="table table-hover" style="">
       <thead style="background: #30B5A8; color: #fff;">
       <tr>
       <th scope="col" class="text-left">Nombre</th>
       <th scope="col" class="text-left">Numero de control</th>
       <th scope="col" class="text-left">Correo</th>
       <th scope="col" class="text-left">Tipo</th>
       <th scope="col" class="text-left">Clave de linea</th>
       <th scope="col" class="text-left">Tableros</th>
       </tr>
       </thead>
      <tbody>
      <%for(int i=0; i<conteoReg; i++){%>
      <tr class="">
      <td class="text-left"><%=nombres[i]%></td>   
      <td class="text-left"><%=num_control[i]%></td>
      <td class="text-left"><%=correo[i]%></td>
      <td class="text-left"><%=tipo_alumno[i]%></td>
      <td class="text-left"><%=clave_linea[i]%></td>
      <td class="text-left"><a href="./Tableros_alumno?num=<%=num_control[i]%>&nombreC=<%=nombres[i]%>"><button class="btn resumen" style="background:#35D3C3; color:#fff; border: 1px solid #35D3C3;" title="Ver tableros"><i class="fas fa-paste"></i></button></a></td>
      </tr>
      <%}%>
      </tbody>
      </table>
       </div> 
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

<!--Script para comparar fechas en caso de que la fecha inicial sea mayor o igual a la final-->      
<script src="js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>



