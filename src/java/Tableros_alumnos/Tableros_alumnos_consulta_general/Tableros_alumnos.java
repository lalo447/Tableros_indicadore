
package Tableros_alumnos.Tableros_alumnos_consulta_general;

import ConnexionDB.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Tableros_alumnos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        int countProy=0,countPub=0,countInfrep=0,countSoft=0,countPat=0,countDcho=0;
        String bloProy="", bloPub="", bloInfrep="", bloSoft="", bloPat="", bloDcho=""; 
        
        try{
        Conexion c=new Conexion();
        Connection con=c.ConexionBD();
        Statement st=null;
        ResultSet rs=null;
        
        /*Obtenemos los proyectos asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_proyecto) from alm_colbr_proy");
        while(rs.next()){
            countProy=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos las publicaciones asignadas*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_publicacion) from alm_colbr_pub");
        while(rs.next()){
            countPub=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los informes y o reportes asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_infrep) from alm_colbr_infrep");
        while(rs.next()){
            countInfrep=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los software asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_patente_soft) from alm_colbr_soft");
        while(rs.next()){
            countSoft=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos las patentes asignadas*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_patente) from alm_colbr_pat");
        while(rs.next()){
            countPat=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los derechos de autos asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_dcho_autor) from alm_colbr_dcho");
        while(rs.next()){
            countDcho=rs.getInt(1);
        }
        rs.beforeFirst();
        
         if(countProy<=0){
        bloProy="disabled";  
      }else{
        bloProy="";  
      }  
      
      if(countPub<=0){
        bloPub="disabled";
      }else{
        bloPub="";  
      }
      
      if(countInfrep<=0){
        bloInfrep="disabled";  
      }else{
        bloInfrep="";   
      }
      
      if(countSoft<=0){
        bloSoft="disabled"; 
      }else{
        bloSoft="";   
      }
      
      if(countPat<=0){
        bloPat="disabled";  
      }else{
        bloPat="";   
      }
        
      if(countDcho<=0){
       bloDcho="disabled";    
      }else{
       bloDcho="";      
      }
      
      request.setAttribute("bloProy",bloProy);
      request.setAttribute("bloPub",bloPub);
      request.setAttribute("bloInfrep",bloInfrep);
      request.setAttribute("bloSoft",bloSoft);
      request.setAttribute("bloPat",bloPat);
      request.setAttribute("bloDcho",bloDcho);
        
      request.setAttribute("countProy",countProy);
      request.setAttribute("countPub",countPub);
      request.setAttribute("countInfrep",countInfrep);
      request.setAttribute("countSoft",countSoft);
      request.setAttribute("countPat",countPat);
      request.setAttribute("countDcho",countDcho);
      request.getRequestDispatcher("./Tableros_alumnos_general/Tableros_alumnos.jsp").forward(request, response);  
         
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
