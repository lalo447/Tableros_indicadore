package Tableros_instituciones.Tableros_instituciones_individual;

import ConnexionDB.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Tableros_registros_institucion extends HttpServlet {

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
        
        String InstNombresRep[]=null;
        String InstNombresConEsp[]=null;
        String nombre[]=null;
        String jefe[]=null;
        String opcBorde[]=null;
        String nombres[]=null;
        int numRegistros[]=null;
      
       /*Realizamos los query de consultas de los departamentos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select i.nombre_institucion, count(d.clave_departamento) from departamento d, institucion i where d.clave_institucion_fk=i.clave_institucion and i.clave_institucion='"+clave+"' order by i.nombre_institucion");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from departamento d, institucion i where d.clave_institucion_fk=i.clave_institucion and i.clave_institucion='"+clave+"' order by i.nombre_institucion");      
        st=con.createStatement();
        rs=st.executeQuery("select i.nombre_institucion, d.nombre_departamento, d.jefe_departamento from departamento d, institucion i where i.clave_institucion=d.clave_institucion_fk and i.clave_institucion='"+clave+"' order by i.nombre_institucion");

        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        InstNombresRep=new String[conteoReg];
        InstNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        jefe=new String[conteoReg];
        opcBorde=new String[conteoReg];
        
         if(conteoReg>0){
        while(rs.next()){
            InstNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2);
            jefe[x]=rs.getString(3);
            x++;
           
        }
         rs.beforeFirst();
         
         InstNombresConEsp[0]=InstNombresRep[0];
         for(int i=0; i<conteoReg-1; i++){
             if(!InstNombresRep[i].equals(InstNombresRep[i+1])){
                 InstNombresConEsp[i+1]=InstNombresRep[i+1];
             }else{
                InstNombresConEsp[i+1]="";
             }
         } 
         
          for(int i=0; i<conteoReg; i++){
             if(!InstNombresConEsp[i].equals("")){
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
      request.setAttribute("InstNombresDep", InstNombresConEsp);
      request.setAttribute("nombreDep",nombre);
      request.setAttribute("jefeDep",jefe);
      request.setAttribute("nombresDep",nombres);
      request.setAttribute("numDep",numRegistros);
      request.setAttribute("opcBordeDep",opcBorde);
      request.setAttribute("conteoRegDep",conteoReg);
      request.setAttribute("conteoRegDep2",conteoReg2);
      
      
      /*Parte de cuerpos academicos*/
       st=null;
       rs=null;
       stConteo=null;
       rsConteo=null;
       stNumRegistros=null;
       rsNumRegistros=null;
       
       conteoReg2=0;
       conteoReg=0;
       x=0;
       InstNombresRep=null;
       InstNombresConEsp=null;
       nombre=null;
       String tipo[]=null;
       String numero_horas[]=null;
       String fecha[]=null;
       
       nombres=null;
       numRegistros=null;
       opcBorde=null;
       
       /*Realizamos los query de consultas de los cuerpos academicos*/
        stNumRegistros=con.createStatement();
        rsNumRegistros=stNumRegistros.executeQuery("select i.nombre_institucion, count(clave_curso) from cursos c, institucion i where c.clave_institucion=i.clave_institucion and i.clave_institucion='"+clave+"' order by i.nombre_institucion");      
        stConteo=con.createStatement();
        rsConteo=stConteo.executeQuery("select count(*) from cursos c, institucion i where c.clave_institucion=i.clave_institucion and i.clave_institucion='"+clave+"' order by i.nombre_institucion");      
        st=con.createStatement();
        rs=st.executeQuery("select i.nombre_institucion, c.nombre_curso, c.tipo_curso, c.numero_horas, c.fecha from cursos c, institucion i where c.clave_institucion=i.clave_institucion and i.clave_institucion='"+clave+"' order by i.nombre_institucion");

        
        while(rsConteo.next()){
            conteoReg=rsConteo.getInt(1);
        }
        rsConteo.beforeFirst();
        
        InstNombresRep=new String[conteoReg];
        InstNombresConEsp=new String[conteoReg];
        nombre=new String[conteoReg];
        jefe=new String[conteoReg];
        tipo=new String[conteoReg];
        numero_horas=new String[conteoReg];
        fecha=new String[conteoReg];
        opcBorde=new String[conteoReg];
        
         if(conteoReg>0){
        while(rs.next()){
            InstNombresRep[x]=rs.getString(1);
            nombre[x]=rs.getString(2);
            tipo[x]=rs.getString(3);
            numero_horas[x]=rs.getString(4);
            fecha[x]=rs.getString(5);
            x++;
        }
         rs.beforeFirst();
        
          InstNombresConEsp[0]=InstNombresRep[0];
         for(int i=0; i<conteoReg-1; i++){
             if(!InstNombresRep[i].equals(InstNombresRep[i+1])){
                 InstNombresConEsp[i+1]=InstNombresRep[i+1];
             }else{
               InstNombresConEsp[i+1]="";
             }
         }
         
          for(int i=0; i<conteoReg; i++){
             if(!InstNombresConEsp[i].equals("")){
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
      
      request.setAttribute("InstNombresCurso", InstNombresConEsp);
      request.setAttribute("nombreCurso",nombre);
      request.setAttribute("tipoCurso",tipo);
      request.setAttribute("numero_horasCurso",numero_horas);
      request.setAttribute("fechaCurso",fecha);
      request.setAttribute("nombresCurso",nombres);
      request.setAttribute("numCurso",numRegistros);
      request.setAttribute("opcBordeCurso",opcBorde);
      request.setAttribute("conteoRegCurso",conteoReg);
      request.setAttribute("conteoRegCurso2",conteoReg2);
      
      
      
      String registros=request.getParameter("registros");
       request.setAttribute("registros",registros);    
       
       if(registros.equals("departamentos")){
           request.getRequestDispatcher("./Tableros_instituciones_individual/Tableros_departamentos_institucion.jsp").forward(request, response);     
        
      }else if(registros.equals("cursos")){
            request.getRequestDispatcher("./Tableros_instituciones_individual/Tableros_cursos_institucion.jsp").forward(request, response);     
      }   
        
      }catch(Exception ex){
          System.out.println("Error: "+ ex.getMessage());
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
