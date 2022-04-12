
package Tableros_cuerpos_academicos.Tableros_cuerpos_academicos_general;

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

public class Tableros_cuerpos_academicos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
         int countInt=0;
         String bloInt="";
         
        try{
        Conexion c=new Conexion();
        Connection con=c.ConexionBD();
        Statement st=null;
        ResultSet rs=null;
        
        /*Obtenemos el numero de integrantes asigandos asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct rfc) from integrantes i, cuerpo_academico c where i.clave_cuerpo=c.clave_cuerpo");
        while(rs.next()){
            countInt=rs.getInt(1);
        }
        rs.beforeFirst();
        
       if(countInt<=0){
          bloInt="disabled";
       }else{
          bloInt=""; 
       }
      
     request.setAttribute("bloInt",bloInt);
      request.setAttribute("countInt",countInt);
  
      request.getRequestDispatcher("./Tableros_cuerpos_academicos_general/Tableros_cuerpos_academicos.jsp").forward(request, response);  
         
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
