package co.com.entregas.semana15.dao;

import java.lang.reflect.ParameterizedType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.com.entregas.semana15.carrousel.Carrousel;
import co.com.entregas.semana15.jdbc.AdministradorConexiones;

public class CarrouselDao {

	public List<Carrousel> findAll() throws Exception {

		AdministradorConexiones con = new AdministradorConexiones();
		List<Carrousel> lista = new ArrayList<Carrousel>();
		try {
			String sql = "SELECT * FROM carrousel";

			PreparedStatement ps = con.obtenerConexion().prepareStatement(sql);
			ps.execute();
			ResultSet rs = ps.getResultSet();

			while (rs.next()) {
				Carrousel as = new Carrousel();
				as.setId(rs.getLong("id"));
				as.setDescripcion(rs.getString("descripcion"));
				as.setImagenpath(rs.getString("imagen"));
				as.setActivo(rs.getLong("activo"));
				lista.add(as);
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		con.cerrarConexion();
		return lista;

	}

}
