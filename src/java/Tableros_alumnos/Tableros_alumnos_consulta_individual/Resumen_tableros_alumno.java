
package Tableros_alumnos.Tableros_alumnos_consulta_individual;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Resumen_tableros_alumno extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
       try{
      String resumen=new String(request.getParameter("res").getBytes("iso-8859-1"),"UTF-8"); 
      String tituloPrin=new String(request.getParameter("tit").getBytes("iso-8859-1"),"UTF-8"); 
      String titulo = new String(request.getParameter("titulo").getBytes("iso-8859-1"),"UTF-8");
      request.setAttribute("resumen",resumen);
      request.setAttribute("titulo",titulo);
      request.setAttribute("tituloPrin",tituloPrin);
      request.getRequestDispatcher("./Tableros_alumnos_individual/Resumen_tableros_alumno.jsp").forward(request, response);  
   
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