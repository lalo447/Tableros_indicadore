
package Tableros_instituciones.Tableros_instituciones_individual;

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

public class Tableros_institucion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
     
        int countDep=0,countCursos=0;
        String bloDep="", bloCursos="";
         
        try{
        String clave=request.getParameter("clave");
        String nombreC=request.getParameter("nombreC");
            
        Conexion c=new Conexion();
        Connection con=c.ConexionBD();
        Statement st=null;
        ResultSet rs=null;
        
        /*Obtenemos los departamentos asignados asignados*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct d.clave_departamento) from departamento d, institucion i where i.clave_institucion=d.clave_institucion_fk and i.clave_institucion='"+clave+"'");
        while(rs.next()){
            countDep=rs.getInt(1);
        }
        rs.beforeFirst();
        
        /*Obtenemos los cursos asignadas*/
        st=con.createStatement();
        rs=st.executeQuery("select count(distinct d.clave_curso) from cursos d, institucion i where i.clave_institucion=d.clave_institucion and i.clave_institucion='"+clave+"'");
        while(rs.next()){
            countCursos=rs.getInt(1);
        }
        rs.beforeFirst();
        
       if(countDep<=0){
          bloDep="disabled";
       }else{
          bloDep=""; 
       }
       
       if(countCursos<=0){
          bloCursos="disabled";
       }else{
          bloCursos=""; 
       }
       
     request.setAttribute("clave",clave);
     request.setAttribute("nombreC",nombreC);   
      
     request.setAttribute("bloDep",bloDep);
     request.setAttribute("bloCursos",bloCursos);  
        
      request.setAttribute("countDep",countDep);
      request.setAttribute("countCursos",countCursos);
      request.getRequestDispatcher("./Tableros_instituciones_individual/Tableros_institucion.jsp").forward(request, response);  
         
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Tableros_institucion.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Tableros_institucion.class.getName()).log(Level.SEVERE, null, ex);
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
