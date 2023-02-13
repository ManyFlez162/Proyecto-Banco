create database banco;
use banco;

/** Creacion de tabla accounts **/
create table accounts(
acoountno varchar(20) primary key,
funds decimal (8,2) not null
);
insert into accounts (acoountno, funds) values("ACC1", 1000);
insert into accounts (acoountno, funds) values("ACC2", 1000);

/** Crearcion de  tabla clientes **/
create table clientes(
id int primary key,
nombre varchar(100) not null,
apellidoPaterno varchar(100) not null,
apellidoMaterno varchar(100) not null,
domicilio varchar(100) not null
);
/**Creacion de tabla cuenta**/
create table cuentas(
id int primary key,
fecha date,
saldo int not null,
FOREIGN KEY (id) references clientes(id)
);

