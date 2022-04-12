
package Tableros_profesores.Tableros_profesores_consulta_general;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Graficas_de_tableros_profesores extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int conteoReg2 = Integer.parseInt(request.getParameter("conteoReg2")); 
        int conteoReg=Integer.parseInt(request.getParameter("conteo"));
        String fecha_desde = request.getParameter("fecha_desde"); 
        String fecha_hasta = request.getParameter("fecha_hasta");
        String fechas_busqueda = request.getParameter("fechas_busqueda"); 
        String titulo=new String(request.getParameter("titulo").getBytes("iso-8859-1"),"UTF-8");
        String titulog=new String(request.getParameter("tituloG").getBytes("iso-8859-1"),"UTF-8");
        String nombres[]=new String[conteoReg2];
        int numReg[]=new int[conteoReg2];
        int fecha_bus_con[]=new int[conteoReg];
    
        try{
        for(int i=0; i<conteoReg2; i++){
        nombres[i]=new String(request.getParameter("nombres"+i).getBytes("iso-8859-1"),"UTF-8");
        numReg[i]=Integer.parseInt(request.getParameter("numRegistros"+i));
        }
         
        for(int i=0; i<conteoReg; i++){
        fecha_bus_con[i]=Integer.parseInt(request.getParameter("fecha_bus_con"+i).substring(0,4));
        }
        
        /*Ordenamos el arreglo de la copia de fechas de inicio*/
        int fecha_bus_cop[]=new int[conteoReg];
        for(int i=0; i<conteoReg; i++){
            fecha_bus_cop[i]=fecha_bus_con[i];
        }
        Arrays.sort(fecha_bus_cop);
        
        /*Creamos un arreglo nuevo para agregar las fechas o años diferentes del arreglo fechas de inicio*/
        int conteoFrec=1; 
        for(int i=0; i<conteoReg-1; i++){
          if(fecha_bus_cop[i]!=fecha_bus_cop[i+1]){
             conteoFrec++; 
          }
        }
        
        int x=1;
        int fechas_bus_rec[]=new int[conteoFrec];
        fechas_bus_rec[0]=fecha_bus_cop[0];
        for(int i=0; i<conteoReg-1; i++){
            if(fecha_bus_cop[i]!=fecha_bus_cop[i+1]){
               fechas_bus_rec[x]=fecha_bus_cop[i+1];
               x++;
            }
        }
        
        /*Agregamos el conteo de registros de cada año de cada profesor*/
        int conteoF=0;
        int numFechas[]=new int[conteoReg2*conteoFrec];
        int rem=0;
        x=0;
        for(int i=0; i<numReg.length; i++){
            for(int z=0; z<conteoFrec; z++){
                int rem2=numReg[i]+rem;
                for(int y=rem; y<rem2; y++){
                    if(fecha_bus_con[y]==fechas_bus_rec[z]){
                        conteoF++;
                    } 
                }
                numFechas[x]=conteoF;
                x++;
                conteoF=0;
            }
            rem=rem+numReg[i];
            
        }
        
        
        /*for(int i=0; i<NumFechas.length; i++){
            System.out.println(""+NumFechas[i]);
        }*/
        
      request.setAttribute("tituloG", titulog);   
      request.setAttribute("titulo", titulo);  
      request.setAttribute("conteoReg", conteoReg);  
      request.setAttribute("conteoReg2", conteoReg2);
      request.setAttribute("fecha_desde", fecha_desde);  
      request.setAttribute("fecha_hasta", fecha_hasta);
      request.setAttribute("fechas_busqueda", fechas_busqueda);
      request.setAttribute("fechasRec", fechas_bus_rec);
      request.setAttribute("numFechas", numFechas);
      request.setAttribute("nombres", nombres);
      request.setAttribute("numRegistros", numReg);
      request.getRequestDispatcher("./Tableros_profesores_general/Graficas_tableros_profesores.jsp").forward(request, response);  
        
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
