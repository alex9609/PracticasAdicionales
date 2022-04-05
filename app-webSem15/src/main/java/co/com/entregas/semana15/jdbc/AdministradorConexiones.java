package co.com.entregas.semana15.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AdministradorConexiones {

	public Connection obtenerConexion() throws ClassNotFoundException, SQLException {

		String url = "jdbc:postgresql://ec2-52-73-155-171.compute-1.amazonaws.com:5432/d67a7ev74k9ij3";
		String user = "rdffguumewpbav";
		String password = "16b0950d56b48d61e6314cb7ef20c141e77076286a2313c073ddede7a9788f9e";
		String driverName = "org.postgresql.Driver";

		try {
			Class.forName(driverName);
			Connection con;
			con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (ClassNotFoundException e) {
			e.getMessage();
			throw new ClassNotFoundException("Revise la clase Class for name");
		}catch (SQLException e) {
			e.getMessage();
			throw new SQLException("Error al conectar con la Base de datos");
		}
	}

}
