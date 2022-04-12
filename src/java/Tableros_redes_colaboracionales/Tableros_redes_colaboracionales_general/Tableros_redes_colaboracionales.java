
package Tableros_redes_colaboracionales.Tableros_redes_colaboracionales_general;

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


public class Tableros_redes_colaboracionales extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        int countDep=0,countCuerpo=0;
        String bloDep="", bloCuerpo="";
         
        try{
        Conexion c=new Conexion();
        Connection con=c.ConexionBD();
        Statement st=null;
        ResultSet rs=null;
        
        /*Obtenemos los departamentos asignados asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_departamento) from departamento d, red_colaboracion r where d.clave_red_fk=r.clave_red");
        while(rs.next()){
            countDep=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los cuerpos academicos asignadas*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_cuerpo) from cuerpo_academico c, red_colaboracion r where c.clave_red=r.clave_red");
        while(rs.next()){
            countCuerpo=rs.getInt(1);
        }
        rs.beforeFirst();
        
       if(countDep<=0){
          bloDep="disabled";
       }else{
          bloDep=""; 
       }
       
       if(countCuerpo<=0){
          bloCuerpo="disabled";
       }else{
          bloCuerpo=""; 
       }
      
     request.setAttribute("bloDep",bloDep);
     request.setAttribute("bloCuerpo",bloCuerpo);  
        
      request.setAttribute("countDep",countDep);
      request.setAttribute("countCuerpo",countCuerpo);
      request.getRequestDispatcher("./Tableros_redes_colaboracionales_general/Tableros_redes_colaboracionales.jsp").forward(request, response);  
         
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
