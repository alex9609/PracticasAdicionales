package pruebas;

import java.util.List;

import co.com.entregas.semana15.carrousel.Carrousel;
import co.com.entregas.semana15.dao.CarrouselDao;
public class CarrouselDaoTest {

	public static void main(String[] args) throws Exception {

		CarrouselDao cr = new CarrouselDao();
		List<Carrousel> ls = cr.findAll();
		
		for(Carrousel ca : ls) {
			System.out.println(ca.toString());
		}
	}

}
