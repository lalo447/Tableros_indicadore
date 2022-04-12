
package Tableros_profesores.Tableros_profesores_consulta_individual;

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

public class Tableros_profesor extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
      try{
      String rfc=request.getParameter("rfc");
      String nombreC=request.getParameter("nombreC");
      int countProy=0,countPub=0,countInfrep=0,countSoft=0,countPat=0,countDcho=0;
      String bloProy="", bloPub="", bloInfrep="", bloSoft="", bloPat="", bloDcho="";
        Conexion c=new Conexion();
        Connection con=c.ConexionBD();
        Statement st=null;
        ResultSet rs=null;
        
        /*Obtenemos los proyectos asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_proyecto) from prof_colbr_proy where rfc='"+rfc+"'");
        while(rs.next()){
            countProy=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos las publicaciones asignadas*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_publicaion) from prof_colbr_pub where rfc='"+rfc+"'");
        while(rs.next()){
            countPub=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los informes y o reportes asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_infrep) from prof_colbr_infrep where rfc='"+rfc+"'");
        while(rs.next()){
            countInfrep=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los software asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_patente_soft) from prof_colbr_soft where rfc='"+rfc+"'");
        while(rs.next()){
            countSoft=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos las patentes asignadas*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_patente) from prof_colbr_pat where rfc='"+rfc+"'");
        while(rs.next()){
            countPat=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los derechos de autos asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_dcho_autor) from prof_colbr_dcho where rfc='"+rfc+"'");
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
      
      request.setAttribute("rfc",rfc);
      request.setAttribute("nombreC",nombreC);
      request.setAttribute("countProy",countProy);
      request.setAttribute("countPub",countPub);
      request.setAttribute("countInfrep",countInfrep);
      request.setAttribute("countSoft",countSoft);
      request.setAttribute("countPat",countPat);
      request.setAttribute("countDcho",countDcho);
      request.setAttribute("bloProy",bloProy);
      request.setAttribute("bloPub",bloPub);
      request.setAttribute("bloInfrep",bloInfrep);
      request.setAttribute("bloSoft",bloSoft);
      request.setAttribute("bloPat",bloPat);
      request.setAttribute("bloDcho",bloDcho);
      request.getRequestDispatcher("./Tableros_profesores_individual/Tableros_profesor.jsp").forward(request, response);  
    
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Tableros_profesor.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Tableros_profesor.class.getName()).log(Level.SEVERE, null, ex);
        }
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
