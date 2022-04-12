<%-- 
    Document   : Tableros_alumnos_lineas_investigacion
    Created on : 16 may. 2020, 9:44:20
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
                <a class="dropdown-item" href="#"><i class="fas fa-paste"></i> Ver tableros de alumnos</a>
                <a class="dropdown-item" href="#"><i class="fas fa-search"></i> Buscar alumno</a>
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
                <a class="dropdown-item" href="#"><i class="fas fa-paste"></i> Ver tableros de lineas de investigacion</a>
                <a class="dropdown-item" href="#"><i class="fas fa-search"></i> Buscar linea de investigacion</a>
                </div>
                </li>
                
                <li class="dropright">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
		<span class="icon"><i class="fas fa-archive"></i></span>
		<span class="text text-white">Cuerpos academicos</span>
		</a>
                 <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="#"><i class="fas fa-paste"></i> Ver tableros de cuerpos academicos</a>
                <a class="dropdown-item" href="#"><i class="fas fa-search"></i> Buscar cuerpo academico</a>
                </div>
                </li>
                
                <li class="dropright">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
		<span class="icon"><i class="fas fa-school"></i></span>
		<span class="text text-white">Instituciones</span>
		</a>
                 <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="#"><i class="fas fa-paste"></i> Ver tableros de instituciones</a>
                <a class="dropdown-item" href="#"><i class="fas fa-search"></i> Buscar institucion</a>
                </div>
                </li>
                
                 <li class="dropright">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
		<span class="icon"><i class="far fa-clipboard"></i></span>
		<span class="text text-white">Departamentos</span>
		</a>
                <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="#"><i class="fas fa-paste"></i> Ver tableros de departamentos</a>
                <a class="dropdown-item" href="#"><i class="fas fa-search"></i> Buscar departamento</a>
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
        <h2 class="text-muted"><i class="fas fa-file-import"></i> Lineas de investigacion de alumnos</h2>
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
        int conteoReg2=0;
        int conteoReg=0;
        int x=0;
        
        String LineaNombresRep[]=null;
        String LineaNombresConEsp[]=null;
        String nombre[]=null;
        String correo[]=null;
        String nivel[]=null;
        String tipo[]=null;
        String status[]=null;
        
        String opcBorde[]=null;
        String nombres[]=null;
        int numRegistros[]=null;
        
        
       /*Realizamos los query de consultas de los alumnos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select l.nombre_linea, count(u.numero_control) from usuario_alumno u, linea_investigacion l  where u.clave_linea=l.clave_linea group by l.nombre_linea order by l.nombre_linea");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, linea_investigacion l where u.clave_linea=l.clave_linea");      
        st=con.createStatement();
        rs=st.executeQuery("select l.nombre_linea, u.nombre, u.apellido_p, u.apellido_m, u.correo, u.nivel_academico, u.tipo_alumno, u.status_alumno from linea_investigacion l, usuario_alumno u where l.clave_linea=u.clave_linea order by l.nombre_linea");

        
        /*Obtenemos el total de registros de la consulta*/
        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        LineaNombresRep=new String[conteoReg];
        LineaNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        correo=new String[conteoReg];
        nivel=new String[conteoReg];
        tipo=new String[conteoReg];
        opcBorde=new String[conteoReg];
        status=new String[conteoReg];
        
         if(conteoReg>0){
        while(rs.next()){
            LineaNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
            correo[x]=rs.getString(5);
            nivel[x]=rs.getString(6);
            tipo[x]=rs.getString(7);
            status[x]=rs.getString(8);
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
           nombres[x]=rsNumRegistros.getString(1);
           numRegistros[x]=rsNumRegistros.getInt(2);
           x++;
        }
        rsNumRegistros.beforeFirst();
        
          LineaNombresConEsp[0]=LineaNombresRep[0];
         for(int i=0; i<conteoReg-1; i++){
             if(!LineaNombresRep[i].equals(LineaNombresRep[i+1])){
                 LineaNombresConEsp[i+1]=LineaNombresRep[i+1];
             }else{
                LineaNombresConEsp[i+1]="";
             }
         }
         
         for(int i=0; i<conteoReg; i++){
             if(!LineaNombresConEsp[i].equals("")){
                 opcBorde[i]="border-top";
             }else{
                 opcBorde[i]=""; 
             }
        }    
        }
        
        %>
        
        <div class="form-inline row my-2">
            
        <form method="POST" action="./Reportes_alumnos_lineas_investigacion">
        <input type="hidden" name="conteoReg" value="<%=conteoReg%>"> 
        <input type="hidden" name="conteoReg2" value="<%=conteoReg2%>">
        <%for(int i=0; i<conteoReg2; i++){%>
        <input type="hidden" name="nombres<%=i%>" value="<%=nombres[i]%>">
        <input type="hidden" name="numRegistros<%=i%>" value="<%=numRegistros[i]%>">
        <%}%>
        <%for(int i=0; i<conteoReg; i++){%>
        <input type="hidden" name="nombre<%=i%>" value="<%=nombre[i]%>">
        <input type="hidden" name="correo<%=i%>" value="<%=correo[i]%>">
        <input type="hidden" name="nivel<%=i%>" value="<%=nivel[i]%>">
        <input type="hidden" name="tipo<%=i%>" value="<%=tipo[i]%>">
        <input type="hidden" name="status<%=i%>" value="<%=status[i]%>">
        <%}%>
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn pdf" id="pdf" style="background:#FE5D5D; color: #fff;" title="Convertir en pdf">
        <i class="far fa-file-pdf"></i> PDF</button>
        </div>
        </form> 
            
        <form method="POST" action="./Graficas_de_tableros_lineas_investigacion">
        <input type="hidden" name="conteoReg2" value="<%=conteoReg2%>">
        <input type="hidden" name="conteo" value="<%=conteoReg%>">
        <input type="hidden" name="titulo" value="Graficas de alumnos">
        <input type="hidden" name="tituloG" value="Alumnos asignados">
        <%for(int i=0; i<conteoReg2; i++){%>
        <input type="hidden" name="nombres<%=i%>" value="<%=nombres[i]%>">
        <input type="hidden" name="numRegistros<%=i%>" value="<%=numRegistros[i]%>">
        <%}%>
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn graficas" id="graficas" style="background:#FEC44F; color: #fff;" title="Mostrar grafica">
        <i class="fas fa-chart-bar"></i> Graficas</button>
        </div>
        </form>     
        </div>   
       

       <div class="table-responsive" style="height: 70%; min-width: 600px;">
       <table class="table table-hover table-borderless" style="">
       <thead style="background: #30B5A8; color: #fff;">
       <tr>
       <th scope="col" class="text-left">Linea</th>
       <th scope="col" class="text-left">Nombre</th>
       <th scope="col" class="text-left">Correo</th>
       <th scope="col" class="text-left">Nivel</th>
       <th scope="col" class="text-left">Tipo</th>
       <th scope="col" class="text-left">Status</th>
       </tr>
       </thead>
      <tbody>
      <%for(int i=0; i<conteoReg; i++){%>
      <tr class="<%=opcBorde[i]%>">
      <td class="text-left"><%=LineaNombresConEsp[i]%></td>
      <td class="text-left"><%=nombre[i]%></td>
      <td class="text-left"><%=correo[i]%></td>
      <td class="text-left"><%=nivel[i]%></td>
      <td class="text-left"><%=tipo[i]%></td>
      <td class="text-left"><%=status[i]%></td>
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
 if(fecha_inicial>=fecha_final){
 alert("Error la fecha inicial no puede ser mayor o igual a la final");
 }  
 }
</script>     
<script src="js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>

