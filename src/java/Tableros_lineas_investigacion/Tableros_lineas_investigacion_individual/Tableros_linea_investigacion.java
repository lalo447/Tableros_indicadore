
package Tableros_lineas_investigacion.Tableros_lineas_investigacion_individual;

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

public class Tableros_linea_investigacion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
  
       int countCuerpo=0,countAlm=0,countProf=0;
        String bloCuerpo="", bloAlm="", bloProf="";
         
        try{
        String clave=request.getParameter("clave");
        String nombreC=request.getParameter("nombreC"); 
        Conexion c=new Conexion();
        Connection con=c.ConexionBD();
        Statement st=null;
        ResultSet rs=null;
        
        /*Obtenemos los alumnos asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct numero_control) from usuario_alumno u, linea_investigacion l where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"'");
        while(rs.next()){
            countAlm=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos las profesores asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct rfc) from usuario_profesor u, linea_investigacion l where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"'");
        while(rs.next()){
            countProf=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los cuerpos academicos asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct clave_cuerpo) from cuerpo_academico u, linea_investigacion l where u.clave_linea=l.clave_linea and l.clave_linea='"+clave+"'");
        while(rs.next()){
            countCuerpo=rs.getInt(1);
        }
        rs.beforeFirst();
        
       if(countAlm<=0){
          bloAlm="disabled";
       }else{
          bloAlm=""; 
       }
       
       if(countProf<=0){
          bloProf="disabled";
       }else{
          bloProf=""; 
       }
       
       if(countCuerpo<=0){
          bloCuerpo="disabled";
       }else{
          bloCuerpo=""; 
       }
     
     request.setAttribute("clave",clave);
     request.setAttribute("nombreC",nombreC);  
     request.setAttribute("bloAlm",bloAlm);
     request.setAttribute("bloProf",bloProf);
     request.setAttribute("bloCuerpo",bloCuerpo);  
        
      request.setAttribute("countAlm",countAlm);
      request.setAttribute("countProf",countProf);
      request.setAttribute("countCuerpo",countCuerpo);
      request.getRequestDispatcher("./Tableros_lineas_investigacion_individual/Tableros_linea_investigacion.jsp").forward(request, response);  
         
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
