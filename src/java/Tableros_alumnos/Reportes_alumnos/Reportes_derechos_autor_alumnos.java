
package Tableros_alumnos.Reportes_alumnos;

import java.util.*; 
import java.text.*; 
import java.awt.*; 
import java.net.*; 
import java.io.*; 
import net.glxn.qrgen.QRCode; 
import net.glxn.qrgen.image.ImageType; 
import java.io.ByteArrayOutputStream; 
import java.io.FileOutputStream; 
import  java.io.IOException; 
import com.lowagie.text.pdf.PdfPTable; 
import com.lowagie.text.pdf.PdfPCell; 
import com.lowagie.text.Document; 
import com.lowagie.text.DocumentException; 
import com.lowagie.text.Image; 
import com.lowagie.text.Paragraph; 
import com.lowagie.text.pdf.PdfWriter; 
import com.lowagie.text.Font; 
import com.lowagie.text.*; 
import com.lowagie.text.html.WebColors;
import javax.servlet.*; 
import javax.servlet.http.*; 

public class Reportes_derechos_autor_alumnos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
          int conteoReg = Integer.parseInt(request.getParameter("conteoReg"));
    String fecha_desde=request.getParameter("fecha_desde");
    String fecha_hasta=request.getParameter("fecha_hasta");
    String fechasBusqueda=request.getParameter("fechas_busqueda");
    String titulo[]=new String[conteoReg];
    String estado[]=new String[conteoReg];
    String num_tramite[]=new String[conteoReg];
    String fecha_registro[]=new String[conteoReg];
    String fecha_solicitud[]=new String[conteoReg];
    
    try 
    { 
    for(int i=0; i<conteoReg; i++){
    titulo[i]=new String(request.getParameter("titulo"+i).getBytes("iso-8859-1"),"UTF-8");
    estado[i]=new String(request.getParameter("estado"+i).getBytes("iso-8859-1"),"UTF-8");
    num_tramite[i]=request.getParameter("num_tramite"+i);
    fecha_registro[i]=new String(request.getParameter("fecha_registro"+i).getBytes("iso-8859-1"),"UTF-8");
    fecha_solicitud[i]=new String(request.getParameter("fecha_bus_con"+i).getBytes("iso-8859-1"),"UTF-8");
    }
    
    int conteoReg2 = Integer.parseInt(request.getParameter("conteoReg2")); 
    String nombres[]=new String[conteoReg2];
    int conteoNum[]=new int[conteoReg2];
    
    for(int i=0; i<conteoReg2; i++){
        nombres[i]=new String(request.getParameter("nombres"+i).getBytes("iso-8859-1"),"UTF-8");
        conteoNum[i]=Integer.parseInt(request.getParameter("numRegistros"+i));
    }
    
    /*Generamos una cadena de fecha*/
    SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yy h:mm "); 
    String cadenaFecha = formato.format(new java.util.Date()); 

    /*Generamos el PDF*/
    Color tituloColor = new Color(104,107,107);
    Document documento = new Document(PageSize.LETTER,50,50,50,50); 
    Font tnr1 = new Font(Font.NORMAL, 22, Font.NORMAL,tituloColor); 
    Font tnr2 = new Font(Font.STRIKETHRU, 11, Font.NORMAL,Color.WHITE);
    Font tnr3 = new Font(Font.NORMAL, 16, Font.NORMAL,tituloColor); 
   
    /* Se especifica el tipo MIME para salida en formato pdf */ 
    response.setContentType("application/pdf"); 
    /* El objeto documento que se va a generar se vincula a un flujo de salida */ 
    PdfWriter.getInstance(documento,response.getOutputStream());  
    /*Se abre el documento*/
    documento.open();
    
    /* Ruta relativa de la imagen */ 
    String relativeWebPath = "/images/LogoPDF1.png"; 
    /* Se obtiene la ruta absoluta a partir de la ruta relativa */ 
    String absoluteDiskPath = getServletContext().getRealPath(relativeWebPath); 
    /* Se obtiene la imagen en base a la ruta absoluta */ 
    Image im = Image.getInstance(absoluteDiskPath); 
    im.scalePercent(15); 
    im.setAbsolutePosition(10,710); 
    documento.add(im); 
    
    /*Agregamos otra imagen con el mismo procedimiento de antes*/
    relativeWebPath = "/images/LogoPDF2.png"; 
    absoluteDiskPath = getServletContext().getRealPath(relativeWebPath); 
    Image im2 = Image.getInstance(absoluteDiskPath); 
    im2.scalePercent(15); 
    im2.setAbsolutePosition(460,710); 
    documento.add(im2); 
       
    documento.add(new Paragraph("\n"));
    Paragraph titulo_doc = new Paragraph("Registro de derechos autor",tnr1);
    titulo_doc.setAlignment(Paragraph.ALIGN_CENTER);
    documento.add(titulo_doc); 
      
    Paragraph fecha = new Paragraph(cadenaFecha,tnr1);
    fecha.setAlignment(Paragraph.ALIGN_CENTER);
    documento.add(fecha);
    
    if(!fechasBusqueda.equals("")){
    Paragraph fechas_busqueda = new Paragraph("Rango de "+fecha_desde+" hasta "+fecha_hasta,tnr3);
    fechas_busqueda.setAlignment(Paragraph.ALIGN_CENTER);
    documento.add(fechas_busqueda);  
    }else{
     Paragraph fechas_busqueda = new Paragraph("Rango de "+fecha_desde+" hasta "+fecha_hasta,tnr2);
    fechas_busqueda.setAlignment(Paragraph.ALIGN_CENTER);
    documento.add(fechas_busqueda);    
    }
 
    documento.add(new Paragraph("\n"));
    int y=0;
    Color celdaColor = new Color(25,29,71);
    
    for(int i=0; i<conteoReg2; i++){
        documento.add(new Paragraph(""+nombres[i]));
        documento.add(new Paragraph("\n"));
        PdfPTable tabla = new PdfPTable(5);
        
        Paragraph t1=new Paragraph("Titulo",tnr2);
        PdfPCell c1 = new PdfPCell(new Phrase(t1));
        c1.setBackgroundColor(celdaColor);
        tabla.addCell(c1);
        
        Paragraph t2=new Paragraph("Estado",tnr2);
        PdfPCell c2 = new PdfPCell(new Phrase(t2));
        c2.setBackgroundColor(celdaColor);
        tabla.addCell(c2);
        
        Paragraph t3=new Paragraph("Numero de tramite",tnr2);
        PdfPCell c3 = new PdfPCell(new Phrase(t3));
        c3.setBackgroundColor(celdaColor);
        tabla.addCell(c3);
        
        Paragraph t4=new Paragraph("Fecha de registro",tnr2);
        PdfPCell c4 = new PdfPCell(new Phrase(t4));
        c4.setBackgroundColor(celdaColor);
        tabla.addCell(c4); 
        
        Paragraph t5=new Paragraph("Fecha de solicitud",tnr2);
        PdfPCell c5 = new PdfPCell(new Phrase(t5));
        c5.setBackgroundColor(celdaColor);
        tabla.addCell(c5);
        
        for(int x=0; x<conteoNum[i]; x++){
         tabla.addCell(titulo[y]); 
         tabla.addCell(estado[y]); 
         tabla.addCell(num_tramite[y]); 
         tabla.addCell(fecha_registro[y]);
         tabla.addCell(fecha_solicitud[y]);
         y++;
         
        }
        documento.add(tabla);
        documento.add(new Paragraph("\n"));
     
    }  
      documento.close(); 
 
    } 
    catch (Exception de) 
    { 
      System.out.println("Error: "+de.getMessage());
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
