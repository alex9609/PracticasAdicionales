package co.com.entregas.semana15.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.com.entregas.semana15.carrousel.Carrousel;
import co.com.entregas.semana15.dao.CarrouselDao;

@WebServlet("/ListadoImagenesServlet")
public class ListadoImagenesServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarrouselDao cr = new CarrouselDao();
		try {
			List<Carrousel> ls = cr.findAll();
			req.setAttribute("lista", ls);
		} catch (Exception e) {
			req.setAttribute("error", "Error al leer los datos");

		}
		getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);
	}

	
	
	
}
