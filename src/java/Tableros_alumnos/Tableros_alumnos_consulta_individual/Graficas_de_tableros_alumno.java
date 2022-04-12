
package Tableros_alumnos.Tableros_alumnos_consulta_individual;

import ConnexionDB.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Graficas_de_tableros_alumno extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    
        try{
        int conteoReg2 = Integer.parseInt(request.getParameter("conteoReg2")); 
        int conteoReg=Integer.parseInt(request.getParameter("conteo"));
        String fecha_desde = request.getParameter("fecha_desde"); 
        String fecha_hasta = request.getParameter("fecha_hasta");
        String fechas_busqueda = request.getParameter("fechas_busqueda"); 
        String titulo=new String(request.getParameter("titulo").getBytes("iso-8859-1"),"UTF-8");
        String titulog=new String(request.getParameter("tituloG").getBytes("iso-8859-1"),"UTF-8");
        String asignaciones=new String(request.getParameter("asignaciones").getBytes("iso-8859-1"),"UTF-8");
        String nombres[]=new String[conteoReg2];
        int numReg[]=new int[conteoReg2];
        int fecha_bus_con[]=new int[conteoReg];    
            
        for(int i=0; i<conteoReg2; i++){
        nombres[i]=new String(request.getParameter("nombres"+i).getBytes("iso-8859-1"),"UTF-8");
        numReg[i]=Integer.parseInt(request.getParameter("numRegistros"+i));
        }
         
        for(int i=0; i<conteoReg; i++){
        fecha_bus_con[i]=Integer.parseInt(request.getParameter("fecha_bus_con"+i).substring(0,4));
        }
        
        /*Ordenamos el arreglo de la copia de fechas de inicio*/
        int fecha_bus_cop[]=new int[conteoReg];
        for(int i=0; i<conteoReg; i++){
            fecha_bus_cop[i]=fecha_bus_con[i];
        }
        Arrays.sort(fecha_bus_cop);
        
        /*Creamos un arreglo nuevo para agregar las fechas o años diferentes del arreglo fechas de inicio*/
        int conteoFrec=1; 
        for(int i=0; i<conteoReg-1; i++){
          if(fecha_bus_cop[i]!=fecha_bus_cop[i+1]){
             conteoFrec++; 
          }
        }
        
        int x=1;
        int fechas_bus_rec[]=new int[conteoFrec];
        fechas_bus_rec[0]=fecha_bus_cop[0];
        for(int i=0; i<conteoReg-1; i++){
            if(fecha_bus_cop[i]!=fecha_bus_cop[i+1]){
               fechas_bus_rec[x]=fecha_bus_cop[i+1];
               x++;
            }
        }
        
        /*Agregamos el conteo de registros de cada año de cada profesor*/
        int conteoF=0;
        int numFechas[]=new int[conteoReg2*conteoFrec];
        int rem=0;
        x=0;
        for(int i=0; i<numReg.length; i++){
            for(int z=0; z<conteoFrec; z++){
                int rem2=numReg[i]+rem;
                for(int y=rem; y<rem2; y++){
                    if(fecha_bus_con[y]==fechas_bus_rec[z]){
                        conteoF++;
                    } 
                }
                numFechas[x]=conteoF;
                x++;
                conteoF=0;
            }
            rem=rem+numReg[i];
            
        }
        
        /*for(int i=0; i<NumFechas.length; i++){
            System.out.println(""+NumFechas[i]);
        }*/
      
        
      /*Consulta general de graficas*/
       Conexion c=new Conexion();
       Connection con=null;
       con=c.ConexionBD();
       Statement st=null;
       ResultSet rs=null;
       Statement stConteo=null;
       ResultSet rsConteo=null;
       Statement stNumRegistros=null;
       ResultSet rsNumRegistros=null;
       
      if(titulog.equals("Proyectos asignados")){
          
     /*Realizamos los query de consultas de proyectos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.numero_control) from usuario_alumno u, alm_colbr_proy pr, proyecto p  where u.numero_control=pr.numero_control and pr.clave_proyecto=p.clave_proyecto group by u.numero_control order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, alm_colbr_proy pr, proyecto p  where u.numero_control=pr.numero_control and pr.clave_proyecto=p.clave_proyecto order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select p.fch_fin from usuario_alumno u, alm_colbr_proy pr, proyecto p  where u.numero_control=pr.numero_control and pr.clave_proyecto=p.clave_proyecto order by u.nombre");
    
      }else if(titulog.equals("Publicaciones asignadas")){
         
        /*Realizamos los query de consultas de publicaciones*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.numero_control) from usuario_alumno u, alm_colbr_pub pr, publicaciones p  where u.numero_control=pr.numero_control and pr.clave_publicacion=p.clave_publicaciones group by u.numero_control order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, alm_colbr_pub pr, publicaciones p  where u.numero_control=pr.numero_control and pr.clave_publicacion=p.clave_publicaciones order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select p.ano_publicacion from usuario_alumno u, alm_colbr_pub pr, publicaciones p  where u.numero_control=pr.numero_control and pr.clave_publicacion=p.clave_publicaciones order by u.nombre");
         
      }else if(titulog.equals("Informes asignados")){
          
       /*Realizamos los query de consultas de informes*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.numero_control) from usuario_alumno u, alm_colbr_infrep pr, informe_reporte p  where u.numero_control=pr.numero_control and pr.clave_infrep=p.clave_infrep group by u.numero_control order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, alm_colbr_infrep pr, informe_reporte p  where u.numero_control=pr.numero_control and pr.clave_infrep=p.clave_infrep order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select p.fch_publicado from usuario_alumno u, alm_colbr_infrep pr, informe_reporte p  where u.numero_control=pr.numero_control and pr.clave_infrep=p.clave_infrep order by u.nombre");
          
      }else if(titulog.equals("Software asignados")){
          
        /*Realizamos los query de consultas de software*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.numero_control) from usuario_alumno u, alm_colbr_soft pr, patente_software p  where u.numero_control=pr.numero_control and pr.clave_patente_soft=p.clave_patente_soft group by u.numero_control order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, alm_colbr_soft pr, patente_software p  where u.numero_control=pr.numero_control and pr.clave_patente_soft=p.clave_patente_soft order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select p.fch_terminacion from usuario_alumno u, alm_colbr_soft pr, patente_software p  where u.numero_control=pr.numero_control and pr.clave_patente_soft=p.clave_patente_soft order by u.nombre");
         
      }else if(titulog.equals("Patentes asignadas")){
          
      /*Realizamos los query de consultas de patentes*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.numero_control) from usuario_alumno u, alm_colbr_pat pr, patentes p  where u.numero_control=pr.numero_control and pr.clave_patente=p.clave_patente group by u.numero_control order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, alm_colbr_pat pr, patentes p  where u.numero_control=pr.numero_control and pr.clave_patente=p.clave_patente order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select p.fch_concesion from usuario_alumno u, alm_colbr_pat pr, patentes p  where u.numero_control=pr.numero_control and pr.clave_patente=p.clave_patente order by u.nombre");
       
      }else if(titulog.equals("Derechos de autor asignados")){
          
        /*Realizamos los query de consultas de derechos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select u.nombre, u.apellido_p, u.apellido_m, count(u.numero_control) from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor group by u.numero_control order by u.nombre");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor order by u.nombre");      
        st=con.createStatement();
        rs=st.executeQuery("select p.fch_solicitud from usuario_alumno u, alm_colbr_dcho pr, patente_dcho_autor p  where u.numero_control=pr.numero_control and pr.clave_dcho_autor=p.clave_dcho_autor order by u.nombre");
          
      }
      
      /*Conseguimos los años de los registros de la consulta general*/
      int conteoRG=0;
      int conteoRG2=0;
      while(rsConteo.next()){
        conteoRG=rsConteo.getInt(1);
      }
      rsConteo.beforeFirst();
      
      int fecha_bus_conRG[]=new int[conteoRG];
      
      x=0;
      while(rs.next()){
            fecha_bus_conRG[x]=Integer.parseInt(rs.getString(1).substring(0,4));
            x++;
        }
      rs.beforeFirst();
 
      
      for(int i=0; i<conteoRG; i++){
          System.out.println("fechas: "+fecha_bus_conRG[i]);
      }
      
      /*Conseguimos los nombres y el numero de registro por año de los registros de la consulta general*/
       while(rsNumRegistros.next()){
            conteoRG2++;
        }
        rsNumRegistros.beforeFirst();
        String nombresRG[]=new String[conteoRG2];
        int numRegistrosRG[]=new int[conteoRG2];
        x=0;
        
        while(rsNumRegistros.next()){
           nombresRG[x]=rsNumRegistros.getString(1)+" "+rsNumRegistros.getString(2)+" "+rsNumRegistros.getString(3);
           numRegistrosRG[x]=rsNumRegistros.getInt(4);
           x++;
        }
        rsNumRegistros.beforeFirst();
        
       
        /*Ordenamos el arreglo de la copia de los años de registros*/
        int fecha_bus_copRG[]=new int[conteoRG];
        for(int i=0; i<conteoRG; i++){
            fecha_bus_copRG[i]=fecha_bus_conRG[i];
        }
        Arrays.sort(fecha_bus_copRG);
        
        /*Creamos un arreglo nuevo para agregar las fechas o años diferentes del arreglo*/
        int conteoFrecRG=1; 
        for(int i=0; i<conteoRG-1; i++){
          if(fecha_bus_copRG[i]!=fecha_bus_copRG[i+1]){
             conteoFrecRG++; 
          }
        }
        
         x=1;
        int fechas_bus_recRG[]=new int[conteoFrecRG];
        fechas_bus_recRG[0]=fecha_bus_copRG[0];
        for(int i=0; i<conteoRG-1; i++){
            if(fecha_bus_copRG[i]!=fecha_bus_copRG[i+1]){
               fechas_bus_recRG[x]=fecha_bus_copRG[i+1];
               x++;
            }
        }
        /* for(int i=0; i<conteoFrecRG; i++){
          System.out.println("fechas rec: "+fechas_bus_recRG[i]);
      }*/
        
         /*Agregamos el conteo de registros de cada año de cada profesor*/
        int conteoFRG=0;
        int numFechasRG[]=new int[conteoRG2*conteoFrecRG];
        int remRG=0;
        x=0;
        for(int i=0; i<numRegistrosRG.length; i++){
            for(int z=0; z<conteoFrecRG; z++){
                int rem2RG=numRegistrosRG[i]+remRG;
                for(int y=remRG; y<rem2RG; y++){
                    if(fecha_bus_conRG[y]==fechas_bus_recRG[z]){
                        conteoFRG++;
                    } 
                }
                numFechasRG[x]=conteoFRG;
                x++;
                conteoFRG=0;
            }
            remRG=remRG+numRegistrosRG[i];
            
        }
        /*for(int i=0; i<numFechasRG.length; i++){
            System.out.println("num: "+numFechasRG[i]);
        }*/
      
      request.setAttribute("nombresRG", nombresRG);
      request.setAttribute("conteoConsulta", conteoRG);
      request.setAttribute("fechas_bus_recRG", fechas_bus_recRG);
      request.setAttribute("numFechasRG", numFechasRG);
       
      request.setAttribute("asignaciones", asignaciones); 
      request.setAttribute("tituloG", titulog);   
      request.setAttribute("titulo", titulo);  
      request.setAttribute("conteoReg", conteoReg);  
      request.setAttribute("conteoReg2", conteoReg2);
      request.setAttribute("fecha_desde", fecha_desde);  
      request.setAttribute("fecha_hasta", fecha_hasta);
      request.setAttribute("fechas_busqueda", fechas_busqueda);
      request.setAttribute("fechasRec", fechas_bus_rec);
      request.setAttribute("numFechas", numFechas);
      request.setAttribute("nombres", nombres);
      request.setAttribute("numRegistros", numReg);
      request.getRequestDispatcher("./Tableros_alumnos_individual/Graficas_tableros_alumno.jsp").forward(request, response);  
        
        }catch(Exception ex){
           System.out.println("Error: "+ex.getMessage()); 
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
