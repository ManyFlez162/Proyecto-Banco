CREATE DATABASE banco;
USE banco;
CREATE TABLE Direccion(
id_direccion int primary key auto_increment,
calle varchar(50) not null,
colonia varchar(50) not null,
numero int not null
);
CREATE TABLE Cliente (
	id_cliente int primary key auto_increment,
	nombres varchar(50) not null,
	apellido_paterno varchar(50) not null,
	apellido_materno varchar(50) not null,
	fecha_nacimiento date,
	edad int not null,
    id_direccion int not null,
	FOREIGN KEY(id_direccion) references direccion(id_direccion)
); 

CREATE TABLE Cuenta (
	id_cuenta int primary key auto_increment,
	fecha_apertura date, 
	saldo boolean not null,
	id_cliente int not null,
 FOREIGN KEY(id_cliente) references cliente(id_cliente)
 );

CREATE TABLE Transferencia (
	id_transaccion int primary key auto_increment,
	fecha_hora_transaccion datetime,
	cantidad boolean not null,
	id_cuenta_origen int not null,
	id_cuenta_destino int not null,
    FOREIGN KEY(id_cuenta_origen) references cuenta(id_cuenta),
    FOREIGN KEY(id_cuenta_destino) references cuenta(id_cuenta)
);
CREATE TABLE Persona (
	id_persona int primary key auto_increment,
	folio int(10) not null,
	contraseña int (8) not null
    
);
CREATE TABLE Retiro_Sin_Cuenta (
	id_retiro_sin_cuenta int primary key auto_increment,
	fecha_hora_transaccion datetime,
	cantidad boolean not null,
	id_persona int not null,
    id_cuenta int not null,
    FOREIGN KEY(id_persona) references persona(id_persona),
	FOREIGN KEY(id_cuenta) references cuenta(id_cuenta)
);


