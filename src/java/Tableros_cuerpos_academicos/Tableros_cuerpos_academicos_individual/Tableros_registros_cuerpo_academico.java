
package Tableros_cuerpos_academicos.Tableros_cuerpos_academicos_individual;

import ConnexionDB.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Tableros_registros_cuerpo_academico extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
         try{
      String clave=request.getParameter("clave");
      String nombreC=request.getParameter("nombreC");
      
       Conexion c=new Conexion();
       Connection con=null;
       con=c.ConexionBD();
       Statement st=null;
       ResultSet rs=null;
       Statement stConteo=null;
       ResultSet rsConteo=null;
       Statement stNumRegistros=null;
       ResultSet rsNumRegistros=null;
       
        int conteoReg2=0;
        int conteoReg=0;
        int x=0;
        
        String CuerpoNombresRep[]=null;
        String CuerpoNombresConEsp[]=null;
        String nombre[]=null;
        String correo[]=null;
        String tipo[]=null;
        String clave_linea[]=null;
        String nombres[]=null;
        int numRegistros[]=null;
        String opcBorde[]=null;
      
       /*Realizamos la parte de integrantes*/
       stNumRegistros=con.createStatement();
       rsNumRegistros=stNumRegistros.executeQuery("select c.nombre_cuerpo, count(c.clave_cuerpo) from cuerpo_academico c, integrantes i where i.clave_cuerpo=c.clave_cuerpo and c.clave_cuerpo='"+clave+"' order by c.nombre_cuerpo");      
       stConteo=con.createStatement();
       rsConteo=stConteo.executeQuery("select count(*) from integrantes i, cuerpo_academico c where i.clave_cuerpo=c.clave_cuerpo and c.clave_cuerpo='"+clave+"'");      
       st=con.createStatement();
       rs=st.executeQuery("select c.nombre_cuerpo, u.nombre, u.apellido_p, u.apellido_m, u.correo, u.tipo_profesor, u.clave_linea from cuerpo_academico c, integrantes i, usuario_profesor u where c.clave_cuerpo=i.clave_cuerpo and i.rfc=u.rfc and c.clave_cuerpo='"+clave+"' order by c.nombre_cuerpo");
      
        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
     
        CuerpoNombresRep=new String[conteoReg];
        CuerpoNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        correo=new String[conteoReg];
        tipo=new String[conteoReg];
        clave_linea=new String[conteoReg];
        opcBorde=new String[conteoReg];
        
         if(conteoReg>0){
        while(rs.next()){
            CuerpoNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
            correo[x]=rs.getString(5);
            tipo[x]=rs.getString(6);
            clave_linea[x]=rs.getString(7);
            x++;
           
        }
         rs.beforeFirst();
         
         CuerpoNombresConEsp[0]=CuerpoNombresRep[0];
         for(int i=0; i<conteoReg-1; i++){
             if(!CuerpoNombresRep[i].equals(CuerpoNombresRep[i+1])){
                 CuerpoNombresConEsp[i+1]=CuerpoNombresRep[i+1];
             }else{
                CuerpoNombresConEsp[i+1]="";
             }
         } 
         
          for(int i=0; i<conteoReg; i++){
             if(!CuerpoNombresConEsp[i].equals("")){
                 opcBorde[i]="border-top";
             }else{
                 opcBorde[i]=""; 
             }
        } 
        }
         
        while(rsNumRegistros.next()){
            conteoReg2++;
        }
        rsNumRegistros.beforeFirst();
        nombres=new String[conteoReg2];
        numRegistros=new int[conteoReg2];
        
        x=0;
        while(rsNumRegistros.next()){
           nombres[x]=rsNumRegistros.getString(1);
           numRegistros[x]=rsNumRegistros.getInt(2);
           x++;
        }
        rsNumRegistros.beforeFirst();
        
      request.setAttribute("CuerpoNombres", CuerpoNombresConEsp);
      request.setAttribute("nombre",nombre);
      request.setAttribute("correo",correo);
      request.setAttribute("tipo",tipo);
      request.setAttribute("clave_linea",clave_linea);
      request.setAttribute("nombres",nombres);
      request.setAttribute("num",numRegistros);
      request.setAttribute("opcBorde",opcBorde);
      request.setAttribute("conteoReg",conteoReg);
      request.setAttribute("conteoReg2",conteoReg2);
    
      request.getRequestDispatcher("./Tableros_cuerpos_academicos_individual/Tableros_integrantes_cuerpo_academico.jsp").forward(request, response);     

      }catch(Exception ex){
          System.out.println(ex.getMessage());
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
