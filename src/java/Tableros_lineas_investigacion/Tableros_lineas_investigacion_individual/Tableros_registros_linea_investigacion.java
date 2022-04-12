
package Tableros_lineas_investigacion.Tableros_lineas_investigacion_individual;

import ConnexionDB.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Tableros_registros_linea_investigacion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try{
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
        
        String LineaNombresRep[]=null;
        String LineaNombresConEsp[]=null;
        String nombre[]=null;
        String correo[]=null;
        String nivel[]=null;
        String tipo[]=null;
        String status[]=null;
        String nombres[]=null;
        int numRegistros[]=null;
        String opcBorde[]=null;
      
       /*Realizamos la parte de alumnos*/
       stNumRegistros=con.createStatement();
       rsNumRegistros=stNumRegistros.executeQuery("select l.nombre_linea, count(u.numero_control) from usuario_alumno u, linea_investigacion l where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"' order by l.nombre_linea");      
       stConteo=con.createStatement();
       rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno u, linea_investigacion l where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"'");      
       st=con.createStatement();
       rs=st.executeQuery("select l.nombre_linea, u.nombre, u.apellido_p, u.apellido_m, u.correo, u.nivel_academico, u.tipo_alumno, u.status_alumno from linea_investigacion l, usuario_alumno u where l.clave_linea=u.clave_linea and l.clave_linea='"+clave+"' order by l.nombre_linea");
      
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
        status=new String[conteoReg];
        opcBorde=new String[conteoReg];
        
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
        
       
      request.setAttribute("LineaNombresAlm", LineaNombresConEsp);
      request.setAttribute("nombreAlm",nombre);
      request.setAttribute("correoAlm",correo);
      request.setAttribute("nivelAlm",nivel);
      request.setAttribute("tipoAlm",tipo);
      request.setAttribute("statusAlm",status);
      request.setAttribute("nombresAlm",nombres);
      request.setAttribute("numAlm",numRegistros);
      request.setAttribute("opcBordeAlm",opcBorde);
      request.setAttribute("conteoRegAlm",conteoReg);
      request.setAttribute("conteoRegAlm2",conteoReg2);
      
      /*Parte de profesores*/
       st=null;
       rs=null;
       stConteo=null;
       rsConteo=null;
       stNumRegistros=null;
       rsNumRegistros=null;
       
       conteoReg2=0;
       conteoReg=0;
       x=0;
       LineaNombresRep=null;
       LineaNombresConEsp=null;
       correo=null;
       tipo=null;
       status=null;
       nombres=null;
       numRegistros=null;
       opcBorde=null;
       
       stNumRegistros=con.createStatement();
       rsNumRegistros=stNumRegistros.executeQuery("select l.nombre_linea, count(u.rfc) from usuario_profesor u, linea_investigacion l  where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"' order by l.nombre_linea");      
       stConteo=con.createStatement();
       rsConteo=stConteo.executeQuery("select count(*) from usuario_profesor u, linea_investigacion l where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"'");      
       st=con.createStatement();
       rs=st.executeQuery("select l.nombre_linea, u.nombre, u.apellido_p, u.apellido_m, u.correo, u.tipo_profesor, u.status_profesor from linea_investigacion l, usuario_profesor u where l.clave_linea=u.clave_linea and l.clave_linea='"+clave+"' order by l.nombre_linea");

        
        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        LineaNombresRep=new String[conteoReg];
        LineaNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        correo=new String[conteoReg];
        status=new String[conteoReg];
        tipo=new String[conteoReg];
        opcBorde=new String[conteoReg];
        
         if(conteoReg>0){
        while(rs.next()){
            LineaNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
            correo[x]=rs.getString(5);
            tipo[x]=rs.getString(6);
            status[x]=rs.getString(7);
            x++;
        }
         rs.beforeFirst();
        
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
      
      request.setAttribute("LineaNombresProf", LineaNombresConEsp);
      request.setAttribute("nombreProf",nombre);
      request.setAttribute("correoProf",correo);
      request.setAttribute("nivelProf",nivel);
      request.setAttribute("tipoProf",tipo);
      request.setAttribute("statusProf",status);
      request.setAttribute("nombresProf",nombres);
      request.setAttribute("numProf",numRegistros);
      request.setAttribute("opcBordeProf",opcBorde);
      request.setAttribute("conteoRegProf",conteoReg);
      request.setAttribute("conteoRegProf2",conteoReg2);
      
      /*Parte de los cuerpos academicos*/
       st=null;
       rs=null;
       stConteo=null;
       rsConteo=null;
       stNumRegistros=null;
       rsNumRegistros=null;
       
       conteoReg2=0;
       conteoReg=0;
       x=0;
       LineaNombresRep=null;
       LineaNombresConEsp=null;
       nombre=null;
       String jefe[]=null;
       String nombre_red[]=null;
       nombres=null;
       numRegistros=null;
       opcBorde=null;
       
       stNumRegistros=con.createStatement();
       rsNumRegistros=stNumRegistros.executeQuery("select l.nombre_linea, count(u.clave_cuerpo) from cuerpo_academico u, linea_investigacion l  where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"' order by l.nombre_linea");      
       stConteo=con.createStatement();
       rsConteo=stConteo.executeQuery("select count(*) from cuerpo_academico u, linea_investigacion l where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"'");      
       st=con.createStatement();
       rs=st.executeQuery("select l.nombre_linea, u.nombre_cuerpo, u.jefe_cuerpo, (select nombre_red from red_colaboracion where clave_red=u.clave_red) from linea_investigacion l, cuerpo_academico u where l.clave_linea=u.clave_linea and l.clave_linea='"+clave+"' order by l.nombre_linea");

        
       /*Obtenemos el total de registros de la consulta*/
       while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
       }
       rsConteo.beforeFirst();
        
        LineaNombresRep=new String[conteoReg];
        LineaNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        jefe=new String[conteoReg];
        nombre_red=new String[conteoReg];
        opcBorde=new String[conteoReg];
       
        
         if(conteoReg>0){
        while(rs.next()){
            LineaNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2);
            jefe[x]=rs.getString(3);
            nombre_red[x]=rs.getString(4);
            x++;
        }
         rs.beforeFirst(); 
        
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
        
      request.setAttribute("LineaNombresCuerpo", LineaNombresConEsp);
      request.setAttribute("nombreCuerpo",nombre);
      request.setAttribute("jefeCuerpo",jefe);
      request.setAttribute("nombre_red",nombre_red);
      request.setAttribute("nombresCuerpo",nombres);
      request.setAttribute("numCuerpo",numRegistros);
      request.setAttribute("opcBordeCuerpo",opcBorde);
      request.setAttribute("clave", clave);
      request.setAttribute("nombreC",nombreC);
      request.setAttribute("conteoRegCuerpo",conteoReg);
      request.setAttribute("conteoRegCuerpo2",conteoReg2);
      
      String registros=request.getParameter("registros");
       request.setAttribute("registros",registros);
      if(registros==null){
          request.getRequestDispatcher("./Tableros_lineas_investigacion_individual/Tableros_alumnos_linea_investigacion.jsp").forward(request, response);     
       
      }else if(registros.equals("alumnos")){
           request.getRequestDispatcher("./Tableros_lineas_investigacion_individual/Tableros_alumnos_linea_investigacion.jsp").forward(request, response);     
        
      }else if(registros.equals("profesores")){
            request.getRequestDispatcher("./Tableros_lineas_investigacion_individual/Tableros_profesores_linea_investigacion.jsp").forward(request, response);     
         
      }else if(registros.equals("cuerpos")){
           request.getRequestDispatcher("./Tableros_lineas_investigacion_individual/Tableros_cuerpos_linea_investigacion.jsp").forward(request, response);     
         
      }
        
      }catch(Exception ex){
          System.out.println(ex.getMessage());
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
