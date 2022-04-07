create schema public;

CREATE TABLE carrousel (
	id SERIAL primary key NOT NULL,
	descripcion VARCHAR(50) NOT NULL,
	imagen VARCHAR(100),
	activo int NOT NULL
);


insert into carrousel (descripcion, imagen,activo) values('Imagen de html ','img/html.jpg',1);
insert into carrousel (descripcion, imagen,activo) values('Imagen de java','img/java.jpg',1);
insert into carrousel (descripcion, imagen,activo) values('Imagen de js','img/js.jpg',1);
insert into carrousel (descripcion, imagen,activo) values('Imagen de python','img/python.jpg',1);
insert into carrousel (descripcion, imagen,activo) values('Imagen de sql','img/sql.png',1);

SELECT * FROM carrousel;