
package Tableros_lineas_investigacion.Tableros_lineas_investigacion_individual;

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

public class Busqueda_linea extends HttpServlet {

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
       rsConteo=stConteo.executeQuery("select count(*) from linea_investigacion");      
       st=con.createStatement();
       rs=st.executeQuery("select clave_linea, nombre_linea, coor_linea, clave_departamento_fk from linea_investigacion order by nombre_linea");
       
       while(rsConteo.next()){
           conteoR=rsConteo.getInt(1);
       }
       rsConteo.beforeFirst();
       
       String clave_linea[]=new String[conteoR];
       String nombre_linea[]=new String[conteoR];
       String coor_linea[]=new String[conteoR];
       String clave_departamento[]=new String[conteoR];
       
       int x=0;
       while(rs.next()){
           clave_linea[x]=rs.getString(1);
           nombre_linea[x]=rs.getString(2);
           coor_linea[x]=rs.getString(3);
           clave_departamento[x]=rs.getString(4);
           x++;
       }
       rs.beforeFirst();
       
       request.setAttribute("clave_linea", clave_linea);
       request.setAttribute("nombre_linea", nombre_linea);
       request.setAttribute("coor_linea" ,coor_linea);
       request.setAttribute("clave_departamento", clave_departamento);
       request.getRequestDispatcher("./Tableros_lineas_investigacion_individual/Busqueda_linea_investigacion.jsp").forward(request, response);  
     
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
