
package Tableros_alumnos.Tableros_alumnos_consulta_individual;

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


public class Busqueda_alumno extends HttpServlet {

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
       rsConteo=stConteo.executeQuery("select count(*) from usuario_alumno");      
       st=con.createStatement();
       rs=st.executeQuery("select numero_control, nombre, apellido_p, apellido_m, correo, tipo_alumno, clave_linea from usuario_alumno order by nombre");
       
       while(rsConteo.next()){
           conteoR=rsConteo.getInt(1);
       }
       rsConteo.beforeFirst();
       
       String num_control[]=new String[conteoR];
       String nombre[]=new String[conteoR];
       String correo[]=new String[conteoR];
       String tipo_alumno[]=new String[conteoR];
       String clave_linea[]=new String[conteoR];
       
       int x=0;
       while(rs.next()){
           num_control[x]=rs.getString(1);
           nombre[x]=rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
           correo[x]=rs.getString(5);
           tipo_alumno[x]=rs.getString(6);
           clave_linea[x]=rs.getString(7);
           x++;
       }
       rs.beforeFirst();
       
       request.setAttribute("num_control", num_control);
       request.setAttribute("nombres" ,nombre);
       request.setAttribute("correo", correo);
       request.setAttribute("tipo", tipo_alumno);
       request.setAttribute("clave_linea", clave_linea);
       request.getRequestDispatcher("./Tableros_alumnos_individual/Busqueda_alumno.jsp").forward(request, response);  
     
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
