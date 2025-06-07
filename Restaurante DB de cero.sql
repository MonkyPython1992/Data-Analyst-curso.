CREATE SCHEMA restaurantes;
use restaurantes;

CREATE TABLE restaurante(
restaurante_id int not null,
nombre varchar(100) null,
foto varchar(200) null,
direccion varchar(100),
horario_atencion varchar(50),
calificacion int null,
primary key (restaurante_id)
);

CREATE TABLE plato (
plato_id int primary key not null ,
nombre varchar(100) null,
descripcion varchar(100) null,
precio decimal (10,2),
restaurante_id int not null,
categoria_id int not null

) ;

CREATE TABLE ingrediente (
ingrediente_id int primary key not null,
nombre varchar(100) null,
descripcion varchar(100) null,
plato_id int not null
);

CREATE TABLE categoria (
categoria_id int primary key not null,
nombre varchar(100) null,
descripcion varchar(100) null
);

CREATE TABLE pedido (
pedido_id int primary key not null,
fecha_hora_pedido datetime null,
cantidad int null,
precio decimal (10,2) null,
total decimal (14,4)null,
aclaraciones varchar(200),
direccion_entrega varchar(100) null,
fecha_hora_entrega datetime null,
usuario_id int not null,
plato_id int not null

);
CREATE TABLE usuario (
usuario_id int primary key not null,
nomnbre varchar(100) null,
telefono varchar(50) null,
direccion varchar(200) null,
puerta varchar(2) null,
piso varchar(2) null,
departamento varchar(2) null,
aclaraciones varchar(200) null,
email varchar(50) not null,
contrasena varchar(50) not null,
fecha_contrasena date not null,
estado_baja bool not null,
fecha_baja date null

);

CREATE TABLE tipo_usuario(
tipo_usuario_id int primary key not null,
nombre varchar(10) null
);

CREATE TABLE renovacion(
renovacion_id int primary key not null,
usuario_id int not null,
tipo_usuario_id int not null,
fecha_alta date not null,
fecha_vencimiento date null
);

ALTER TABLE plato
add constraint categoria
FOREIGN KEY (categoria_id)
references categoria(categoria_id); 

ALTER TABLE plato
add constraint restaurante
FOREIGN KEY (restaurante_id)
references restaurante(restaurante_id); 

ALTER TABLE ingrediente
add constraint plato
FOREIGN KEY (plato_id)
references plato(plato_id); 

ALTER TABLE pedido
add constraint usuario_pedido
FOREIGN KEY (usuario_id)
references usuario(usuario_id); 

ALTER TABLE pedido
add constraint plato_pedido
FOREIGN KEY (plato_id)
references plato(plato_id); 

ALTER TABLE renovacion
add constraint tipo_usuario
FOREIGN KEY (tipo_usuario_id)
references tipo_usuario(tipo_usuario_id); 

ALTER TABLE renovacion
add constraint usuario_renovacion
FOREIGN KEY (usuario_id)
references suario(usuario_id); 

