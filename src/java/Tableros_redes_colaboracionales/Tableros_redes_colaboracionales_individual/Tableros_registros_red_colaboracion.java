
package Tableros_redes_colaboracionales.Tableros_redes_colaboracionales_individual;

import ConnexionDB.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Tableros_registros_red_colaboracion extends HttpServlet {

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
        
        String RedNombresRep[]=null;
        String RedNombresConEsp[]=null;
        String nombre[]=null;
        String jefe[]=null;
        String institucion[]=null;
        String opcBorde[]=null;
        String nombres[]=null;
        int numRegistros[]=null;
      
       /*Realizamos los query de consultas de los departamentos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select r.nombre_red, count(d.clave_departamento) from departamento d, red_colaboracion r where d.clave_red_fk=r.clave_red and r.clave_red='"+clave+"' order by r.nombre_red");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from departamento d, red_colaboracion r where d.clave_red_fk=r.clave_red and r.clave_red='"+clave+"' order by r.nombre_red");      
        st=con.createStatement();
        rs=st.executeQuery("select r.nombre_red, d.nombre_departamento, d.jefe_departamento, (select nombre_institucion from institucion where clave_institucion=clave_institucion_fk) from departamento d, red_colaboracion r where d.clave_red_fk=r.clave_red and r.clave_red='"+clave+"' order by r.nombre_red");

        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        RedNombresRep=new String[conteoReg];
        RedNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        jefe=new String[conteoReg];
        institucion=new String[conteoReg];
        opcBorde=new String[conteoReg];
        
         if(conteoReg>0){
        while(rs.next()){
            RedNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2);
            jefe[x]=rs.getString(3);
            institucion[x]=rs.getString(4);
            x++;
           
        }
         rs.beforeFirst();
         
         RedNombresConEsp[0]=RedNombresRep[0];
         for(int i=0; i<conteoReg-1; i++){
             if(!RedNombresRep[i].equals(RedNombresRep[i+1])){
                 RedNombresConEsp[i+1]=RedNombresRep[i+1];
             }else{
                RedNombresConEsp[i+1]="";
             }
         } 
         
          for(int i=0; i<conteoReg; i++){
             if(!RedNombresConEsp[i].equals("")){
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
        
      
      request.setAttribute("nombreC", nombreC);
      request.setAttribute("clave",clave);  
      request.setAttribute("RedNombresDep", RedNombresConEsp);
      request.setAttribute("nombreDep",nombre);
      request.setAttribute("jefeDep",jefe);
      request.setAttribute("institucionDep",institucion);
      request.setAttribute("nombresDep",nombres);
      request.setAttribute("numDep",numRegistros);
      request.setAttribute("opcBordeDep",opcBorde);
      request.setAttribute("conteoRegDep",conteoReg);
      request.setAttribute("conteoRegDep2",conteoReg2);
      
      /*Parte de profesores*/
       st=null;
       rs=null;
       stConteo=null;
       rsConteo=null;
       stNumRegistros=null;
       rsNumRegistros=null;
       
       conteoReg2=0;
       conteoReg=0;
       x=0;
       RedNombresRep=null;
       RedNombresConEsp=null;
       nombre=null;
       jefe=null;
       String linea[]=null;
       nombres=null;
       numRegistros=null;
       opcBorde=null;
       
       /*Realizamos los query de consultas de los cuerpos academicos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select r.nombre_red, count(c.clave_cuerpo) from cuerpo_academico c, red_colaboracion r where c.clave_red=r.clave_red and r.clave_red='"+clave+"' order by r.nombre_red");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from cuerpo_academico c, red_colaboracion r where c.clave_red=r.clave_red and r.clave_red='"+clave+"' order by r.nombre_red");      
        st=con.createStatement();
        rs=st.executeQuery("select r.nombre_red, c.nombre_cuerpo, c.jefe_cuerpo, (select nombre_linea from linea_investigacion where clave_linea=c.clave_linea) from cuerpo_academico c, red_colaboracion r where c.clave_red=r.clave_red and r.clave_red='"+clave+"' order by r.nombre_red");

        
        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        RedNombresRep=new String[conteoReg];
        RedNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        jefe=new String[conteoReg];
        linea=new String[conteoReg];
        opcBorde=new String[conteoReg];
        
         if(conteoReg>0){
        while(rs.next()){
            RedNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2);
            jefe[x]=rs.getString(3);
            linea[x]=rs.getString(4);
            x++;
        }
         rs.beforeFirst();
        
          RedNombresConEsp[0]=RedNombresRep[0];
         for(int i=0; i<conteoReg-1; i++){
             if(!RedNombresRep[i].equals(RedNombresRep[i+1])){
                 RedNombresConEsp[i+1]=RedNombresRep[i+1];
             }else{
                RedNombresConEsp[i+1]="";
             }
         }
         
          for(int i=0; i<conteoReg; i++){
             if(!RedNombresConEsp[i].equals("")){
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
      
      request.setAttribute("RedNombresCuerpo", RedNombresConEsp);
      request.setAttribute("nombreCuerpo",nombre);
      request.setAttribute("jefeCuerpo",jefe);
      request.setAttribute("lineaCuerpo",linea);
      request.setAttribute("nombresCuerpo",nombres);
      request.setAttribute("numCuerpo",numRegistros);
      request.setAttribute("opcBordeCuerpo",opcBorde);
      request.setAttribute("conteoRegCuerpo",conteoReg);
      request.setAttribute("conteoRegCuerpo2",conteoReg2);
      
      
      
      String registros=request.getParameter("registros");
       request.setAttribute("registros",registros);    
       
       if(registros.equals("departamento")){
           request.getRequestDispatcher("./Tableros_redes_colaboracion_individual/Tableros_departamentos_red_colaboracion.jsp").forward(request, response);     
        
      }else if(registros.equals("cuerpos")){
            request.getRequestDispatcher("./Tableros_redes_colaboracion_individual/Tableros_cuerpos_red_colaboracion.jsp").forward(request, response);     
      }   
        
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
