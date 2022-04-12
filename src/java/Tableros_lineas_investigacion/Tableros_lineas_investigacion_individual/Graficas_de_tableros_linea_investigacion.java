
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

public class Graficas_de_tableros_linea_investigacion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         try{
            
        int conteoReg2 = Integer.parseInt(request.getParameter("conteoReg2")); 
        int conteoTotal = Integer.parseInt(request.getParameter("conteoTotal")); 
        int conteoReg=Integer.parseInt(request.getParameter("conteo"));
        String titulog=new String(request.getParameter("tituloG").getBytes("iso-8859-1"),"UTF-8");
        String linea=new String(request.getParameter("Linea_investigacion").getBytes("iso-8859-1"),"UTF-8");
        String lineaNom=new String(linea.getBytes("iso-8859-1"),"UTF-8");
        String nombres[]=new String[conteoReg2];
        int numReg[]=new int[conteoReg2];
        int fecha_bus_con[]=new int[conteoReg];    
        for(int i=0; i<conteoReg2; i++){
        nombres[i]=new String(request.getParameter("nombres"+i).getBytes("iso-8859-1"),"UTF-8");
        numReg[i]=Integer.parseInt(request.getParameter("numRegistros"+i));
        }
        
       Conexion c=new Conexion();
       Connection con=null;
       con=c.ConexionBD();
       Statement st=null;
       ResultSet rs=null;
        
        request.setAttribute("linea", lineaNom);  
        request.setAttribute("tituloG", titulog); 
        request.setAttribute("conteoTotal", conteoTotal);   
        request.setAttribute("conteoReg", conteoReg);  
        request.setAttribute("conteoReg2", conteoReg2);
        request.setAttribute("nombres", nombres);
        request.setAttribute("numRegistros", numReg);
        request.getRequestDispatcher("./Tableros_lineas_investigacion_individual/Graficas_registros_linea_investigacion.jsp").forward(request, response);  
        
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
