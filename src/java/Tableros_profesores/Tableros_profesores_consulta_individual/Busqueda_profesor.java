package Tableros_profesores.Tableros_profesores_consulta_individual;

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

public class Busqueda_profesor extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
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
       rsConteo=stConteo.executeQuery("select count(*) from usuario_profesor");      
       st=con.createStatement();
       rs=st.executeQuery("select rfc, numero_control, nombre, apellido_p, apellido_m, correo, tipo_profesor, clave_linea from usuario_profesor order by nombre");
       
       while(rsConteo.next()){
           conteoR=rsConteo.getInt(1);
       }
       rsConteo.beforeFirst();
       
       String rfc[]=new String[conteoR];
       String num_control[]=new String[conteoR];
       String nombre[]=new String[conteoR];
       String correo[]=new String[conteoR];
       String tipo_profesor[]=new String[conteoR];
       String clave_linea[]=new String[conteoR];
       
       int x=0;
       while(rs.next()){
           rfc[x]=rs.getString(1);
           num_control[x]=rs.getString(2);
           nombre[x]=rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5);
           correo[x]=rs.getString(6);
           tipo_profesor[x]=rs.getString(7);
           clave_linea[x]=rs.getString(8);
           x++;
       }
       rs.beforeFirst();
       
       request.setAttribute("rfc", rfc);
       request.setAttribute("num_control", num_control);
       request.setAttribute("nombres" ,nombre);
       request.setAttribute("correo", correo);
       request.setAttribute("tipo_profesor", tipo_profesor);
       request.setAttribute("clave_linea", clave_linea);
       request.getRequestDispatcher("./Tableros_profesores_individual/Busqueda_profesor.jsp").forward(request, response);  
     
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
            Logger.getLogger(Busqueda_profesor.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Busqueda_profesor.class.getName()).log(Level.SEVERE, null, ex);
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
