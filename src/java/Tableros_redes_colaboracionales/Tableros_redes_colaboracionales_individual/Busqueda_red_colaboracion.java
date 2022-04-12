
package Tableros_redes_colaboracionales.Tableros_redes_colaboracionales_individual;

import ConnexionDB.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Busqueda_red_colaboracion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      
         try{
       Conexion c=new Conexion();  
       Connection con=null;
       con=c.ConexionBD();
       Statement st=null;
       ResultSet rs=null;
       Statement stConteo=null;
       ResultSet rsConteo=null;
       int conteoR=0;
       
       stConteo=con.createStatement();
       rsConteo=stConteo.executeQuery("select count(*) from red_colaboracion");      
       st=con.createStatement();
       rs=st.executeQuery("select clave_red, nombre_red, jefe_red from red_colaboracion order by nombre_red");
       
       while(rsConteo.next()){
           conteoR=rsConteo.getInt(1);
       }
       rsConteo.beforeFirst();
       
       String clave_red[]=new String[conteoR];
       String nombre[]=new String[conteoR];
       String jefe[]=new String[conteoR];
       
       int x=0;
       while(rs.next()){
           clave_red[x]=rs.getString(1);
           nombre[x]=rs.getString(2);
           jefe[x]=rs.getString(3);
           x++;
       }
       rs.beforeFirst();
       
       request.setAttribute("clave_red", clave_red);
       request.setAttribute("nombre", nombre);
       request.setAttribute("jefe" ,jefe);
       request.getRequestDispatcher("./Tableros_redes_colaboracion_individual/Busqueda_red_colaboracion.jsp").forward(request, response);  
     
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
