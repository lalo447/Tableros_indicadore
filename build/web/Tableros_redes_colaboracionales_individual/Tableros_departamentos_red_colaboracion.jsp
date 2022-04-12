<%-- 
    Document   : Tableros_departamentos_red_colaboracion
    Created on : 25 may. 2020, 8:54:30
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
		<span class="text text-white">Redes colaboracionales</span>
		</a>
                <div class="dropdown-menu" style="background: #222C32">
                <a class="dropdown-item" href="#"><i class="fas fa-paste"></i> Ver tableros de departamentos</a>
                <a class="dropdown-item" href="#"><i class="fas fa-search"></i> Buscar departamento</a>
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
        <h2 class="text-muted"><i class="fas fa-broadcast-tower"></i> Departamentos de redes en colaboracion</h2>
        <hr class="color-secondary">
        <%@ page import = "java.io.*" %> 
        <%@ page import = "java.util.*" %>
        <%@ page import = "java.util.Date" %>
        <%@ page import = "java.sql.*" %> 
        <%@ page import = "ConnexionDB.Conexion" %> 
        
        <%
        /*Declaramos las variables u objetos*/
        String clave=request.getParameter("clave");
        String nombreC=request.getParameter("nombreC");
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
        
        String RedNombresRep[]=null;
        String RedNombresConEsp[]=null;
        String nombre[]=null;
        String jefe[]=null;
        String institucion[]=null;
        
        String opcBorde[]=null;
        String nombres[]=null;
        int numRegistros[]=null;
        
        
       /*Realizamos los query de consultas de los alumnos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select r.nombre_red, count(d.clave_departamento) from departamento d, red_colaboracion r where d.clave_red_fk=r.clave_red and r.clave_red='"+clave+"' group by r.nombre_red order by r.nombre_red");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from departamento d, red_colaboracion r where d.clave_red_fk=r.clave_red and r.clave_red='"+clave+"' order by r.nombre_red");      
        st=con.createStatement();
        rs=st.executeQuery("select r.nombre_red, d.nombre_departamento, d.jefe_departamento, (select nombre_institucion from institucion where clave_institucion=clave_institucion_fk) from departamento d, red_colaboracion r where d.clave_red_fk=r.clave_red and r.clave_red='"+clave+"' order by r.nombre_red");

        
        /*Obtenemos el total de registros de la consulta*/
        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        RedNombresRep=new String[conteoReg];
        RedNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        jefe=new String[conteoReg];
        institucion=new String[conteoReg];
        opcBorde=new String[conteoReg];
       
         if(conteoReg>0){
        while(rs.next()){
            RedNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2);
            jefe[x]=rs.getString(3);
            institucion[x]=rs.getString(4);
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
        
          RedNombresConEsp[0]=RedNombresRep[0];
         for(int i=0; i<conteoReg-1; i++){
             if(!RedNombresRep[i].equals(RedNombresRep[i+1])){
                 RedNombresConEsp[i+1]=RedNombresRep[i+1];
             }else{
                RedNombresConEsp[i+1]="";
             }
         }
         
         for(int i=0; i<conteoReg; i++){
             if(!RedNombresConEsp[i].equals("")){
                 opcBorde[i]="border-top";
             }else{
                 opcBorde[i]=""; 
             }
        }    
        }
        
        %>
        
        <div class="form-inline row my-2">
            
        <form method="POST" action="./Reportes_departamentos_redes_colaboracionales">
        <input type="hidden" name="conteoReg" id="conteoReg" value="<%=conteoReg%>"> 
        <input type="hidden" name="conteoReg2" id="conteoReg2" value="<%=conteoReg2%>">
        <%for(int i=0; i<conteoReg2; i++){%>
        <input type="hidden" name="nombres<%=i%>" value="<%=nombres[i]%>">
        <input type="hidden" name="numRegistros<%=i%>" value="<%=numRegistros[i]%>">
        <%}%>
        <%for(int i=0; i<conteoReg; i++){%>
        <input type="hidden" name="nombre<%=i%>" value="<%=nombre[i]%>">
        <input type="hidden" name="jefe<%=i%>" value="<%=jefe[i]%>">
        <input type="hidden" name="institucion<%=i%>" value="<%=institucion[i]%>">
        <%}%>
        <div class="form-group ml-3 mb-2">
        <button type="submit" class="btn pdf" id="pdf" style="background:#FE5D5D; color: #fff;" title="Convertir en pdf">
        <i class="far fa-file-pdf"></i></button>
        </div>
        </form> 
            
        <form method="POST" action="./Graficas_tableros_red_colaboraciona">
        <input type="hidden" name="conteoReg2" value="<%=conteoReg2%>">
        <input type="hidden" name="conteo" value="<%=conteoReg%>">
        <input type="hidden" name="titulo" value="Graficas de departamentos">
        <input type="hidden" name="tituloG" value="Departamentos asignados">
        <%for(int i=0; i<conteoReg2; i++){%>
        <input type="hidden" name="nombres<%=i%>" value="<%=nombres[i]%>">
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
       <th scope="col" class="text-left">Departamento</th>
       <th scope="col" class="text-left">Jefe</th>
       <th scope="col" class="text-left">institucion</th>
       </tr>
       </thead>
      <tbody>
      <%for(int i=0; i<conteoReg; i++){%>
      <tr class="<%=opcBorde[i]%>">
      <td class="text-left"><%=RedNombresConEsp[i]%></td>
      <td class="text-left"><%=nombre[i]%></td>
      <td class="text-left"><%=jefe[i]%></td>
      <td class="text-left"><%=institucion[i]%></td>
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
   
<script src="js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>



