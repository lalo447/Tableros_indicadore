
package Tableros_cuerpos_academicos.Tableros_cuerpos_academicos_individual;

import ConnexionDB.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Graficas_de_tableros_cuerpo_academico extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        try{
        
        int conteoReg2 = Integer.parseInt(request.getParameter("conteoReg2")); 
        int conteoReg=Integer.parseInt(request.getParameter("conteo"));
        String titulo=new String(request.getParameter("titulo").getBytes("iso-8859-1"),"UTF-8");
        String titulog=new String(request.getParameter("tituloG").getBytes("iso-8859-1"),"UTF-8");
        String nombres[]=new String[conteoReg2];
        int numReg[]=new int[conteoReg2];
        int fecha_bus_con[]=new int[conteoReg];    
        for(int i=0; i<conteoReg2; i++){
        nombres[i]=new String(request.getParameter("nombres"+i).getBytes("iso-8859-1"),"UTF-8");
        numReg[i]=Integer.parseInt(request.getParameter("numRegistros"+i));
        } 
        String registro=new String(nombres[0].getBytes("iso-8859-1"),"UTF-8");
        
        Conexion c=new Conexion();
        Connection con=null;
        con=c.ConexionBD();
        Statement stNumRegistros=null;
        ResultSet rsNumRegistros=null;
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select c.nombre_cuerpo, count(i.id_integrantes) from cuerpo_academico c, integrantes i  where c.clave_cuerpo=i.clave_cuerpo group by c.nombre_cuerpo order by c.nombre_cuerpo");      
      
        int conteoRegInt=0;
         while(rsNumRegistros.next()){
            conteoRegInt++;
        }
         
        rsNumRegistros.beforeFirst();
        String nombresCuerpos[]=new String[conteoRegInt];
        int numRegistrosCuerpos[]=new int[conteoRegInt];
        
       int x=0;
        while(rsNumRegistros.next()){
           nombresCuerpos[x]=rsNumRegistros.getString(1);
           numRegistrosCuerpos[x]=rsNumRegistros.getInt(2);
           x++;
        }
        rsNumRegistros.beforeFirst();
        
        stNumRegistros=null;
        rsNumRegistros=null;
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select count(*) from integrantes"); 
        
        int conteoTotal=0;
         while(rsNumRegistros.next()){
          conteoTotal=rsNumRegistros.getInt(1);
        }
        rsNumRegistros.beforeFirst();
      
        
        request.setAttribute("conteoTotal", conteoTotal);
        request.setAttribute("tituloG", titulog);
        request.setAttribute("titulo", titulo); 
        request.setAttribute("cuerpo_academico", registro); 
        request.setAttribute("cuerpo_reg", numReg); 
        request.setAttribute("conteoReg", conteoReg);  
        request.setAttribute("conteoReg2", conteoRegInt);
        request.setAttribute("nombres", nombresCuerpos);
        request.setAttribute("numRegistros", numRegistrosCuerpos);
        request.getRequestDispatcher("./Tableros_cuerpos_academicos_individual/Graficas_tableros_cuerpo_academico.jsp").forward(request, response);  
        
            
       }catch(Exception ex){
           
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
