package pruebas;
import java.sql.SQLException;

import co.com.entregas.semana15.jdbc.AdministradorConexiones;

public class TestConexion {
	public static void main(String[] args) {
		AdministradorConexiones con = new AdministradorConexiones();
		
		try {
			con.obtenerConexion();
			System.out.println("Conexion exitosa");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
