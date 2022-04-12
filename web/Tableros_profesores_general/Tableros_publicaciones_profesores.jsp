<%-- 
    Document   : Tableros_publicaciones_profesores
    Created on : 6 may. 2020, 9:05:32
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
        <h2 class="text-muted"><i class="fas fa-chalkboard-teacher"></i> Publicaciones de profesores</h2>
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
        String fechasBusqueda="";
        
        String rfc[]=null;
        String nombresRep[]=null;
        String nombresConEsp[]=null;
        String titulo[]=null;
        String tipo[]=null;
        String fecha_bus_con[]=null;
        String estado[]=null;
        String nombre_publicador[]=null;
        String num_volumen[]=null;
        String resumen[]=null;
        String link_pub[]=null;
        String opcBorde[]=null;
        String nombres[]=null;
        int numRegistros[]=null;
        
       
        /*Realizamos los query de consultas de publicaciones*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.rfc) from usuario_profesor u, prof_colbr_pub pr, publicaciones p  where u.rfc=pr.rfc and pr.clave_publicaion=p.clave_publicaciones group by u.rfc order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_profesor u, prof_colbr_pub pr, publicaciones p  where u.rfc=pr.rfc and pr.clave_publicaion=p.clave_publicaciones order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select u.rfc, u.nombre, u.apellido_p, u.apellido_m, p.titulo_publicacion, p.tipo_publicacion, p.ano_publicacion, p.estado_publicacion, p.nombre_publicador, p.num_volumen, p.resumen, p.link_pub from usuario_profesor u, prof_colbr_pub pr, publicaciones p  where u.rfc=pr.rfc and pr.clave_publicaion=p.clave_publicaciones order by u.nombre");
       
         
         /*Realizamos los query de consultas por busqueda por fecha de publicaciones*/
        if(fecha_desde!=null && fecha_hasta!=null){ 
        int f1=Integer.parseInt(fecha_desde);
        int f2=Integer.parseInt(fecha_hasta);
            
        if(f2>=f1){
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.rfc) from usuario_profesor u, prof_colbr_pub pr, publicaciones p  where u.rfc=pr.rfc and pr.clave_publicaion=p.clave_publicaciones and p.ano_publicacion>='"+fecha_desde+"' and p.ano_publicacion<='"+fecha_hasta+"' group by u.rfc order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_profesor u, prof_colbr_pub pr, publicaciones p  where u.rfc=pr.rfc and pr.clave_publicaion=p.clave_publicaciones and p.ano_publicacion>='"+fecha_desde+"' and p.ano_publicacion<='"+fecha_hasta+"' order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select u.rfc, u.nombre, u.apellido_p, u.apellido_m, p.titulo_publicacion, p.tipo_publicacion, p.ano_publicacion, p.estado_publicacion, p.nombre_publicador, p.num_volumen, p.resumen, p.link_pub from usuario_profesor u, prof_colbr_pub pr, publicaciones p  where u.rfc=pr.rfc and pr.clave_publicaion=p.clave_publicaciones and p.ano_publicacion>='"+fecha_desde+"' and p.ano_publicacion<='"+fecha_hasta+"' order by u.nombre");
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
        tipo=new String[conteoReg];
        fecha_bus_con=new String[conteoReg];
        estado=new String[conteoReg];
        nombre_publicador=new String[conteoReg];
        num_volumen=new String[conteoReg];
        resumen=new String[conteoReg];
        link_pub=new String[conteoReg];
        opcBorde=new String[conteoReg];
        conteoReg2=0;
        nombres=null;
        numRegistros=null;
        
        /*Si el numero de registros es mayor a 0 guardamos los registros en arreglos
        asi mismo obtenemos en numero de publicaciones por cada profesor de acuerdo a la consulta
        ya sea general o por busqueda*/
        if(conteoReg>0){
         int x=0;
        while(rs.next()){
            rfc[x]=rs.getString(1);
            nombresRep[x]=rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
            titulo[x]=rs.getString(5);
            tipo[x]=rs.getString(6);
            fecha_bus_con[x]=rs.getString(7);
            estado[x]=rs.getString(8);
            nombre_publicador[x]=rs.getString(9);
            num_volumen[x]=rs.getString(10);
            resumen[x]=rs.getString(11);
            link_pub[x]=rs.getString(12);
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
        <input type="number" placeholder="YYYY" min="1950" max="4000" class="form-control" name="fecha_inicial" id="fecha_inicial" title="Ingrese el año inicial" required>
        </div>
            
        <div class="form-group ml-3 mb-2">
        <input type="number" placeholder="YYYY" min="1950" max="4000" class="form-control" name="fecha_final" id="fecha_final" title="Ingrese el año final" required>
        </div>
         
        <input type="hidden" id="conteoReg" value="<%=conteoReg%>">    
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn busqueda" style="background:#5D96F5; color: #fff;" title="Buscar" onclick="compararFechas()">
        <i class="fas fa-search"></i></button>
        </div>
        </form>
            
        <form method="POST" action="./Reportes_publicaciones_profesores">
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
        <input type="hidden" name="nombre_publicador<%=i%>" value="<%=nombre_publicador[i]%>">
        <input type="hidden" name="tipo<%=i%>" value="<%=tipo[i]%>">
        <input type="hidden" name="estado<%=i%>" value="<%=estado[i]%>">
        <input type="hidden" name="volumen<%=i%>" value="<%=num_volumen[i]%>">
        <input type="hidden" name="fecha_bus_con<%=i%>" value="<%=fecha_bus_con[i]%>">  
        <%}%>
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn pdf" id="pdf" style="background:#FE5D5D; color: #fff;" title="Convertir en pdf">
        <i class="far fa-file-pdf"></i></button>
        </div>
        </form> 
            
        <form method="POST" action="./Graficas_de_tableros_profesores">
        <input type="hidden" name="conteoReg2" value="<%=conteoReg2%>">
        <input type="hidden" name="conteo" value="<%=conteoReg%>">
        <input type="hidden" name="fecha_desde" value="<%=fecha_desde%>"> 
        <input type="hidden" name="fecha_hasta" value="<%=fecha_hasta%>">
        <input type="hidden" name="fechas_busqueda" value="<%=fechasBusqueda%>">
        <input type="hidden" name="titulo" value="Graficas de publicaciones">
        <input type="hidden" name="tituloG" value="Publicaciones asignadas">
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
       <th scope="col" class="text-left">Profesor</th>
       <th scope="col" class="text-left">Titulo</th>
       <th scope="col" class="text-left">Publicador</th>
       <th scope="col" class="text-left">Tipo</th>
       <th scope="col" class="text-left">Estado</th>
       <th scope="col" class="text-left">Volumen</th>
       <th scope="col" class="text-left">Año</th>
       <th scope="col" class="text-left">Resumen</th>
       <th scope="col" class="text-left">Link</th>
       </tr>
       </thead>
       
      <tbody>
      <%for(int i=0; i<conteoReg; i++){%>
      <tr class="<%=opcBorde[i]%>">
      <td class="text-left"><%=nombresConEsp[i]%></td>
      <td class="text-left"><%=titulo[i]%></td>
      <td class="text-left"><%=nombre_publicador[i]%></td>
      <td class="text-left"><%=tipo[i]%></td>
      <td class="text-left"><%=estado[i]%></td>
      <td class="text-left"><%=num_volumen[i]%></td>
      <td class="text-left"><%=fecha_bus_con[i]%></td>
      <td><a href="./Resumen_tableros_profesores?res=<%=resumen[i]%>&titulo=<%=titulo[i]%>&tit=Resumen de la publicacion"><button class="btn resumen" style="background:#35D3C3; color:#fff; border: 1px solid #35D3C3;" title="Mostrar resumen"><i class="fas fa-file-alt"></i></button></a></td>
      <td><a href="<%=link_pub[i]%>" target="_blank"><button class="btn resumen" style="background:#35D3C3; color:#fff; border: 1px solid #35D3C3;" title="Mostrar resumen"><i class="fas fa-link"></i></button></a></td>
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
  if(fecha_inicial>fecha_final){
 alert("Error el año inicial no puede ser mayor al año final");
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
