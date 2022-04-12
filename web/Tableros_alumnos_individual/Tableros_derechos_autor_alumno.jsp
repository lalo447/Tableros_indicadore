<%-- 
    Document   : Tableros_derechos_autor_alumno
    Created on : 14 may. 2020, 11:45:37
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
        
         <%@ page import = "java.io.*" %> 
        <%@ page import = "java.util.*" %>
        <%@ page import = "java.util.Date" %>
        <%@ page import = "java.sql.*" %> 
        <%@ page import = "ConnexionDB.Conexion" %> 
         <%
         String numSelect=request.getParameter("num");
        %>
         <!--Inicio del contenido-->
	<div class="main_container">
	<div class="container">
	<div class="content" style="z-index: 2; height: 100vh; min-width: 650px;">
        <form class="form-inline justify-content-between">
        <h2 class="text-muted"><i class="fas fa-user-graduate"></i> Derechos de autor de alumnos</h2>
        <input type="hidden" name="reseteo" value="yes">
        <input type="hidden" name="num" value="<%=numSelect%>">
        <button type="submit" class="btn busqueda" style="background:#5D96F5; color: #fff;" title="Reiniciar registros">
        <i class="fas fa-undo-alt"></i></button>
        </form>
        <hr class="color-secondary">
        <%
        /*Declaramos las variables u objetos*/
        Conexion c=new Conexion();
        Connection con=null;
        con=c.ConexionBD();
        Statement st=null;
        ResultSet rs=null;
        Statement stConteo=null;
        ResultSet rsConteo=null;
        Statement stNumRegistros=null;
        ResultSet rsNumRegistros=null;
        int conteoReg=0;
        int conteoReg2=0;
        String fecha_desde=request.getParameter("fecha_inicial");
        String fecha_hasta=request.getParameter("fecha_final");
        String reseteo=request.getParameter("reseteo");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
        String fechasBusqueda="";
        
        String rfc[]=null;
        String nombresRep[]=null;
        String nombresConEsp[]=null;
        String titulo[]=null;
        String serie_documento[]=null;
        String num_volumen[]=null;
        String rango_paginas[]=null;
        String fecha_bus_con[]=null;
        String opcBorde[]=null;
        String nombres[]=null;
        int numRegistros[]=null;
        
        
         /*Realizamos los query de consultas de derechos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.numero_control) from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor and u.numero_control='"+numSelect+"' group by u.numero_control order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor and u.numero_control='"+numSelect+"' order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select u.numero_control, u.nombre, u.apellido_p, u.apellido_m, p.titulo_proyecto, p.estado_patente, p.numero_tramite, p.fch_registro, p.fch_solicitud from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor and u.numero_control='"+numSelect+"' order by u.nombre");
         
        
         /*Realizamos los query de consultas por busqueda por fecha de patentes*/
        if(fecha_desde!=null && fecha_hasta!=null){ 
            Date date1 = sdf.parse(fecha_desde); 
            Date date2 = sdf.parse(fecha_hasta); 
            
           if(date2.compareTo(date1)==1){
           stNumRegistros=con.createStatement();    
           rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.numero_control) from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor and fch_solicitud>='"+fecha_desde+"' and fch_solicitud<='"+fecha_hasta+"' and u.numero_control='"+numSelect+"' group by u.numero_control order by u.nombre");      
           stConteo=con.createStatement();
           rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor and fch_solicitud>='"+fecha_desde+"' and fch_solicitud<='"+fecha_hasta+"' and u.numero_control='"+numSelect+"' order by u.nombre");      
           st=con.createStatement();
           rs=st.executeQuery("select u.numero_control, u.nombre, u.apellido_p, u.apellido_m, p.titulo_proyecto, p.estado_patente, p.numero_tramite, p.fch_registro, p.fch_solicitud from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor and fch_solicitud>='"+fecha_desde+"' and fch_solicitud<='"+fecha_hasta+"' and u.numero_control='"+numSelect+"' order by u.nombre");
             fechasBusqueda="true";
           }            
           }
        
        
        /*Obtenemos el total de registros de la consulta*/
        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        rfc=new String[conteoReg];
        nombresRep=new String[conteoReg];
        nombresConEsp=new String[conteoReg];
        titulo=new String[conteoReg];
        serie_documento=new String[conteoReg];
        num_volumen=new String[conteoReg];
        rango_paginas=new String[conteoReg];
        fecha_bus_con=new String[conteoReg];
        opcBorde=new String[conteoReg];
        
        /*Si el numero de registros es mayor a 0 guardamos los registros en arreglos
        asi mismo obtenemos en numero de patentes por cada profesor de acuerdo a la consulta
        ya sea general o por busqueda*/
        if(conteoReg>0){
         int x=0;
        while(rs.next()){
            rfc[x]=rs.getString(1);
            nombresRep[x]=rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
            titulo[x]=rs.getString(5);
            serie_documento[x]=rs.getString(6);
            num_volumen[x]=rs.getString(7);
            rango_paginas[x]=rs.getString(8);
            fecha_bus_con[x]=rs.getString(9);
            x++;
        }
         rs.beforeFirst();
         
        while(rsNumRegistros.next()){
            conteoReg2++;
        }
        rsNumRegistros.beforeFirst();
        nombres=new String[conteoReg2];
        numRegistros=new int[conteoReg2];
        
        x=0;
        while(rsNumRegistros.next()){
           nombres[x]=rsNumRegistros.getString(1)+" "+rsNumRegistros.getString(2)+" "+rsNumRegistros.getString(3);
           numRegistros[x]=rsNumRegistros.getInt(4);
           x++;
        }
        rsNumRegistros.beforeFirst();
        
        /*Obtenemos el arreglo con los espacios de los nombres y el de borde*/
         nombresConEsp[0]=nombresRep[0];
         for(int i=0; i<conteoReg-1; i++){
             if(!nombresRep[i].equals(nombresRep[i+1])){
                 nombresConEsp[i+1]=nombresRep[i+1];
             }else{
                 nombresConEsp[i+1]="";
             }
         }
         
         for(int i=0; i<conteoReg; i++){
             if(!nombresConEsp[i].equals("")){
                 opcBorde[i]="border-top";
             }else{
                 opcBorde[i]=""; 
             }
        }      
        }
        %>
        
        <div class="form-inline row">
        <form class="form-inline">
        <div class="form-group ml-3 mb-2">
        <input type="date" class="form-control" name="fecha_inicial" id="fecha_inicial" title="Ingrese la fecha inicial" required>
        </div>
            
        <div class="form-group ml-3 mb-2">
        <input type="date" class="form-control" name="fecha_final" id="fecha_final" title="Ingrese la fecha final" required>
        </div>
         
        <input type="hidden" name="num" value="<%=numSelect%>">    
        <input type="hidden" id="conteoReg" value="<%=conteoReg%>">    
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn busqueda" style="background:#5D96F5; color: #fff;" title="Buscar" onclick="compararFechas()">
        <i class="fas fa-search"></i></button>
        </div>
        </form>
            
        <form method="POST" action="./Reportes_InformesReportes_alumnos">
        <input type="hidden" name="conteoReg" value="<%=conteoReg%>"> 
        <input type="hidden" name="conteoReg2" value="<%=conteoReg2%>">
        <input type="hidden" name="fecha_desde" value="<%=fecha_desde%>"> 
        <input type="hidden" name="fecha_hasta" value="<%=fecha_hasta%>">
        <input type="hidden" name="fechas_busqueda" value="<%=fechasBusqueda%>">
        <%for(int i=0; i<conteoReg2; i++){%>
        <input type="hidden" name="nombres<%=i%>" value="<%=nombres[i]%>">
        <input type="hidden" name="numRegistros<%=i%>" value="<%=numRegistros[i]%>">
        <%}%>
        <%for(int i=0; i<conteoReg; i++){%>
        <input type="hidden" name="titulo<%=i%>" value="<%=titulo[i]%>">
        <input type="hidden" name="serie<%=i%>" value="<%=serie_documento[i]%>">
        <input type="hidden" name="volumen<%=i%>" value="<%=num_volumen[i]%>">
        <input type="hidden" name="rango_p<%=i%>" value="<%=rango_paginas[i]%>">
        <input type="hidden" name="fecha_bus_con<%=i%>" value="<%=fecha_bus_con[i]%>">
        <%}%>
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn pdf" id="pdf" style="background:#FE5D5D; color: #fff;" title="Convertir en pdf">
        <i class="far fa-file-pdf"></i></button>
        </div>
        </form> 
            
        <form method="POST" action="./Graficas_de_tableros_alumno">
        <input type="hidden" name="conteoReg2" value="<%=conteoReg2%>">
        <input type="hidden" name="conteo" value="<%=conteoReg%>">
        <input type="hidden" name="fecha_desde" value="<%=fecha_desde%>"> 
        <input type="hidden" name="fecha_hasta" value="<%=fecha_hasta%>">
        <input type="hidden" name="fechas_busqueda" value="<%=fechasBusqueda%>">
        <input type="hidden" name="titulo" value="Graficas de derechos de autor">
        <input type="hidden" name="tituloG" value="Derechos de autor asignados">
        <input type="hidden" name="asignaciones" value="Asignaciones totales de derechos">
        <%for(int i=0; i<conteoReg2; i++){%>
        <input type="hidden" name="nombres<%=i%>" value="<%=nombres[i]%>">
        <input type="hidden" name="numRegistros<%=i%>" value="<%=numRegistros[i]%>">
        <%}%>
        <%for(int i=0; i<conteoReg; i++){%>
        <input type="hidden" name="fecha_bus_con<%=i%>" value="<%=fecha_bus_con[i]%>">
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
       <th scope="col" class="text-left">Alumno</th>
       <th scope="col" class="text-left">Titulo</th>
       <th scope="col" class="text-left">Serie</th>
       <th scope="col" class="text-left">Volumen</th>
       <th scope="col" class="text-left">Rango de paginas</th>
       <th scope="col" class="text-left">Fecha publicado</th>
       </tr>
       </thead>
       
      <tbody>
      <%for(int i=0; i<conteoReg; i++){%>
      <tr class="<%=opcBorde[i]%>">
      <td class="text-left"><%=nombresConEsp[i]%></td>
      <td class="text-left"><%=titulo[i]%></td>
      <td class="text-left"><%=serie_documento[i]%></td>
      <td class="text-left"><%=num_volumen[i]%></td>
      <td class="text-left"><%=rango_paginas[i]%></td>
      <td class="text-left"><%=fecha_bus_con[i]%></td>
       </tr>
      <%}%>
      </tbody>
      </table>
       </div> 
      <br>
      <div class="text-muted">Total de asignaciones: <input type="text" class="text-center" value="<%=conteoReg%>" size=2 readonly></div> 
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
<script>
 function compararFechas(){
 var fecha_inicial=document.getElementById('fecha_inicial').value;
 var fecha_final=document.getElementById('fecha_final').value;
 console.log(""+fecha_inicial);
 if(fecha_inicial!="" && fecha_final!=""){
  if(fecha_inicial>=fecha_final){
 alert("Error la fecha inicial no puede ser mayor o igual a la final");
 }    
 } 
 }
</script>      
<script src="js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>



