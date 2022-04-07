package co.com.entregas.semana15.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AdministradorConexiones {
	private Connection con;
	public Connection obtenerConexion() throws ClassNotFoundException, SQLException {

		String url = "jdbc:postgresql://ec2-52-21-136-176.compute-1.amazonaws.com:5432/d3r472c4a762r0";
		String user = "ndllqdfxahiblf";
		String password = "cd46d020eb0517fdc4cac367199ea050f98aca594c4b143d726dfe98e4b847d3";
		String driverName = "org.postgresql.Driver";

		try {
			Class.forName(driverName);
			
			this.con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (ClassNotFoundException e) {
			e.getMessage();
			throw new ClassNotFoundException("Revise la clase Class for name");
		}catch (SQLException e) {
			e.getMessage();
			throw new SQLException("Error al conectar con la Base de datos", e.getMessage());
		}
	}

	public void cerrarConexion() {
		try {
			this.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
