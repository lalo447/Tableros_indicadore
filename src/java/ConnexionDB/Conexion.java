package ConnexionDB;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
Connection con=null; 
String BaseDatos="mydb";
String server="jdbc:mysql://localhost/"+BaseDatos;
String user="root";
String password="";

public Conexion(){   }

public Connection ConexionBD(){
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection(server,user,password);
        System.out.println("Conexion exitosa");
    } catch (Exception ex) {
       System.out.println("Error al conectar la base de datos "+ex);
    }
   return con;
}   }
