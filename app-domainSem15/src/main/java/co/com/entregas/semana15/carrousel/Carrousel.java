package co.com.entregas.semana15.carrousel;

public class Carrousel {

	private Long id;
	private String descripcion;
	private String imagenpath;
	private Long activo;

	
	public Carrousel(Long id, String descripcion, String imagenpath, Long activo) {
		this.id = id;
		this.descripcion = descripcion;
		this.imagenpath = imagenpath;
		this.activo = activo;
	}

	public Carrousel() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getImagenpath() {
		return imagenpath;
	}

	public void setImagenpath(String imagenpath) {
		this.imagenpath = imagenpath;
	}

	public Long getActivo() {
		return activo;
	}

	public void setActivo(Long activo) {
		this.activo = activo;
	}

}
