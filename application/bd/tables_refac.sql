create table Tipo_Autoparte(
idtipo_autoparte NUMBER(6) primary key not null,
nombre varchar2(50) not null);

create table Unidad_Medida(
idunidad_medida NUMBER(6) primary key not null,
nombre varchar2(50) not null);

create table Autoparte(
id_autoparte NUMBER(6) primary key not null,
marca varchar2(50) not null,
costo NUMBER(5,2)  not null,
descripcion varchar2(50)  not null,
compatibilidad varchar2(90),
fk_tipo_autopartes number(6)  not null,
fk_unidad_medida number(6) not null,
constraint fk_tipo_autopartes foreign key(fk_tipo_autopartes)references Tipo_Autoparte(idtipo_autoparte),
constraint fk_unidad_medida foreign key(fk_unidad_medida)references Unidad_Medida(idunidad_medida));


create table Usuario(
id_cliente varchar2(10) primary key not null,
nombre varchar2(20),
apaterno varchar2(20),
amaterno varchar2(20),
genero number(2),
telefono varchar2(10) not null,
correo varchar2(30) not null,
password varchar2(90) not null
);

create table Pedido(
id_pedido number(10) primary key not null,
estatus varchar2(20) not null,
fk_idcliente varchar2(10) not null,
constraint fk_idcliente foreign key(fk_idcliente)references Usuario(id_cliente));

create table Pedido_has_Autoparte(
fk_pedido number(10) not null,
fk_autoparte number(6) not null,
cantidad number(6),
constraint fk_pedido foreign key(fk_pedido)references Pedido(id_pedido),
constraint fk_autoparte foreign key(fk_autoparte)references Autoparte(id_autoparte));

create table Comentarios(
	id_comentario number(5) primary key not null,
	nombre varchar2(20),
	correo varchar2(30) not null,
	comentario varchar2(150) not null
);

--------------------------Tipo-Autoparte---------------------------
insert into Tipo_Autoparte values(1,'Suspencion');
insert into Tipo_Autoparte values(2,'Frenos');
insert into Tipo_Autoparte values(3,'Partes externas motor');
insert into Tipo_Autoparte values(4,'Herramienta');
insert into Tipo_Autoparte values(5,'Accesorios');

--------------------------Unidad-Medida---------------------------

insert into Unidad_Medida values(1,'Pieza unica');
insert into Unidad_Medida values(2,'Par');
insert into Unidad_Medida values(3,'Kit-Juego completo');

 --------------------------------Frenos---------------------------------------------------
insert into Autoparte values(020001,'Fritec',324.53,'Balata semi-metalica para autos con sistema ABS','Tida,Aveo,Vento,Gol,March,Tsuru,Rio-KIA',2,3);
insert into Autoparte values(020002,'Duralast',556.53,'Balata metalica para autos de carga','Vehiculos pick-up',2,3);
insert into Autoparte values(020003,'Fritaxi',222.01,'Balata semi-metalica para taxi','Tida,Aveo,Vento,Gol,March,Tsuru,Rio-KIA,etc',2,3);
insert into Autoparte values(020004,'Duralast',330.96,'Rotor freno delantero con aro de balero ABS','Chevrolet(Aveo,Cruze,Sonic,Tornado)',2,1);
insert into Autoparte values(020005,'ACDelco',538.00,'Tambor freno trasero con 4 orificios para birlo','Nissan(Tida,Versa,March,Note)',2,2);
insert into Autoparte values(020006,'Importado',631.46,'Rotor freno delantero 5 birlos','VolkWagen(Gol,Vento,Pointer,Atlantic,Jetta-Clasic)',2,1);
insert into Autoparte values(020007,'Duralast',92.00,'Juego de Resortes Todo en Uno H1341','Chevrolet(Aveo,Cruze,Sonic,Tornado)',2,3);
insert into Autoparte values(020008,'Duralast',132.00,'Juego de Resortes Todo en Uno H7389','Nissan(Tida,Versa,March,Note)',2,3);
insert into Autoparte values(020009,'Duralast',204.46,'Juego de Resortes Todo en Uno H7150','VolkWagen(Gol,Vento,Pointer,Atlantic,Jetta-Clasic)',2,3);
insert into Autoparte values(020010,'ACDelco',653.06,'Mordaza de Freno-Delantero izq','Aveo,Cruze,Sonic,Tornado',2,1);
insert into Autoparte values(020011,'ACDelco',653.06,'Mordaza de Freno-Delantero der','Aveo,Cruze,Sonic,Tornado',2,1)
insert into Autoparte values(020012,'ACDelco',421.00,'Mordaza de Freno-Delantero izq','Tida,Versa,March,Note',2,1);
insert into Autoparte values(020013,'ACDelco',421.00,'Mordaza de Freno-Delantero der','Tida,Versa,March,Note',2,1);
insert into Autoparte values(020014,'ACDelco',367.99,'Mordaza de Freno-Delantero izq','Gol,Vento,Pointer,Atlantic,Jetta-Clasic',2,1);
insert into Autoparte values(020015,'ACDelco',367.99,'Mordaza de Freno-Delantero der','Gol,Vento,Pointer,Atlantic,Jetta-Clasic',2,1);
insert into Autoparte values(020016,'Duralast',761.99,'Mordaza de Freno-Delantero izq','Grand-i10,Ionic,',2,1);
insert into Autoparte values(020016,'Duralast',734.99,'Mordaza de Freno-Delantero der','Grand-i10,Ionic',2,1);

---------------------------------Suspension------------------------------------------------------------

insert into Autoparte values(010001,'Importado',321.26,'Barra estabilizadora','Aveo,Sonic,',1,1);
insert into Autoparte values(010002,'Bosh',932.37,'Amortiguadores-Delanteros con base','Cruze,',1,2);
insert into Autoparte values(010003,'NSK',127.26,'Rotula','Aveo',1,1);
insert into Autoparte values(010004,'Importado',89.12,'Juego de huesos delanteros izq','Aveo,',1,3);
insert into Autoparte values(010005,'Importado',89.12,'Juego de huesos delanteros der','Aveo,',1,3);
insert into Autoparte values(010006,'ACDelco',745.03,'Amortiguadores-Traseros','Aveo,Cruze,Sonic,Tornado,',1,2);
insert into Autoparte values(010007,'Bruck',531.76,'Orquilla con buje flotante izq','Aveo,Sonic',1,1);
insert into Autoparte values(010008,'Bruck',531.76,'Orquilla con buje flotante der','Aveo,Sonic',1,1);
insert into Autoparte values(010009,'SKF',224.55,'Balero delantero con masa','Cruze',1,1);
insert into Autoparte values(010010,'SKF',174.76,'Balero trasero','Aveo,Cruze,Sonic,Tornado',1,1);
insert into Autoparte values(010011,'ACDelco',821.41,'Amortiguadores-Delanteros','Versa,March',1,2);
insert into Autoparte values(010012,'Importada',99.99,'Rotula','Tida',1,1);
insert into Autoparte values(010013,'Importado',343.19,'Terminales s/lado','Tida,Versa,March,Note,',1,2);
insert into Autoparte values(010014,'Importado',992.74,'Buje flotante interno','Versa,',1,1);
insert into Autoparte values(010015,'ACDelco',999.03,'Amortiguadores-Traseros','Tida,Versa,March,Note,',1,2);
insert into Autoparte values(010016,'Bruck',974.76,'Orquilla izq','Tida,Versa,March,Note',1,1);
insert into Autoparte values(010017,'Bruck',932.76,'Orquilla der','Tida,Versa,March,Note',1,1);
insert into Autoparte values(010018,'Importado',654.55,'Balero delantero','Tida,Versa,March,Note',1,1);
insert into Autoparte values(010019,'SKF',175.76,'Balero trasero','Tida,Versa,March,Note',1,1);
insert into Autoparte values(010020,'Importado',321.26,'Barra estabilizadora','Grand-i10,Elantra',1,1);
insert into Autoparte values(010021,'Bosh',932.37,'Amortiguadores-Delanteros con base','Grand-i10,',1,2);
insert into Autoparte values(010022,'NSK',127.26,'Rotula','Aveo',1,1);
insert into Autoparte values(010023,'Importado',89.12,'Juego de huesos delanteros izq','Grand-i10,Elantra,',1,3);
insert into Autoparte values(010024,'Importado',89.12,'Juego de huesos delanteros der','Grand-i10,Elantra,',1,3);
insert into Autoparte values(010025,'ACDelco',745.03,'Amortiguadores-Traseros','Grand-i10,',1,2);
insert into Autoparte values(010026,'Bruck',531.76,'Orquilla con buje flotante izq','Grand-i10',1,1);
insert into Autoparte values(010027,'Bruck',531.76,'Orquilla con buje flotante der','Grand-i10',1,1);
insert into Autoparte values(010028,'SKF',224.55,'Balero delantero con masa','Grand-i10',1,1);
insert into Autoparte values(010029,'SKF',174.76,'Balero trasero','Grand-i10',1,1);
insert into Autoparte values(010030,'ACDelco',1521.41,'Amortiguadores-Delanteros','Jetta-Clasic,vento',1,2);
insert into Autoparte values(010031,'Importada',99.99,'Rotula','Vento',1,1);
insert into Autoparte values(010032,'Importado',343.19,'Terminales s/lado','Gol,Vento,Pointer,Atlantic,Jetta-Clasic',1,2);
insert into Autoparte values(010033,'Importado',992.74,'Buje flotante interno','Gol,Vento,Pointer,Atlantic,Jetta-Clasic,',1,1);
insert into Autoparte values(010034,'ACDelco',981.03,'Amortiguadores-Traseros','Gol,Vento,Pointer,Atlantic,Jetta-Clasic',1,2);
insert into Autoparte values(010035,'Bruck',974.76,'Orquilla izq','Gol',1,1);
insert into Autoparte values(010036,'Bruck',932.76,'Orquilla der','Gol',1,1);
insert into Autoparte values(010037,'Importado',654.55,'Balero delantero','Vento,Gol',1,1);
insert into Autoparte values(010038,'SKF',175.76,'Balero trasero','Vento,Gol',1,1);

----------------------------------Partes externas motor-----------------------------------------

insert into Autoparte values(030001,'Bosh',33.55,'Bujia 2 electrodos','Chevrolet,Nissan,Volkwagen,Hyundai,KIA',3,1);
insert into Autoparte values(030002,'Champions',24.76,'Bujia de iridio','Aveo,Cruze,Sonic,Tornado',3,1);
insert into Autoparte values(030003,'NGK',15.41,'Bujia de platino','Versa,March',3,1);
insert into Autoparte values(030004,'ACDelco',26.55,'Bujia 4 electrodos','Chevrolet,Nissan,Volkwagen,Hyundai,KIA,SEAT',3,1);
insert into Autoparte values(030005,'Champions',22.76,'Bujia de iridio','Aveo,Cruze,Sonic,Tornado,BMW',3,1);
insert into Autoparte values(030006,'NGK',14.41,'Bujia de platino','Versa,March,Grand-i10,Elantra,Golf,Caribe',3,1);
insert into Autoparte values(030007,'Bosh',765.55,'Alternador','Chevy 99-2012',3,1);
insert into Autoparte values(030008,'Bosh',963.11,'Alternador','Aveo,Sonic,Tornado',3,1);
insert into Autoparte values(030009,'Importado',545.41,'Alternador 12V','Versa',3,1);
insert into Autoparte values(030010,'Duralast',888.55,'Alternador','Vento 08-19',3,1);
insert into Autoparte values(030011,'Bosh',999.76,'Alternador polea externa inferior','March',3,1);
insert into Autoparte values(030012,'ACDelco',743.41,'Alternador','Volkwagen-Pointer',3,1);
insert into Autoparte values(030013,'Bosh',765.55,'Alternador','Tsuru 99-2012',3,1);
insert into Autoparte values(030014,'Bosh',963.11,'Alternador','March,Note',3,1);
insert into Autoparte values(030015,'Importado',545.41,'Alternador 12V','Gol',3,1);
insert into Autoparte values(030016,'Duralast',888.55,'Alternador','Fointer 08-19',3,1);
insert into Autoparte values(030017,'Bosh',999.76,'Alternador polea externa inferior','Jetta A3-A4',3,1);
insert into Autoparte values(030018,'ACDelco',743.41,'Alternador','Renault',3,1);
insert into Autoparte values(030019,'Moresa',430.55,'Bomba de agua','Chevy 99-2012',3,1);
insert into Autoparte values(030020,'ACDelco',533.32,'Bomba de agua','Aveo,Sonic,Tornado',3,1);
insert into Autoparte values(030021,'Importado',321.82,'Bomba de agua','Versa',3,1);
insert into Autoparte values(030022,'Power',234.05,'Bomba de agua','Vento 08-19',3,1);
insert into Autoparte values(030023,'Moresa',456.76,'Bomba de agua','March',3,1);
insert into Autoparte values(030024,'Moresa',632.41,'Bomba de agua','Volkwagen-Pointer',3,1);
insert into Autoparte values(030025,'ACDelco',823.55,'Bomba de agua','Tsuru 99-2012',3,1);
insert into Autoparte values(030026,'Moresa',552.11,'Bomba de agua','March,Note',3,1);
insert into Autoparte values(030027,'Importado',431.41,'Bomba de agua','Gol',3,1);
insert into Autoparte values(030028,'Moresa',715.55,'Bomba de agua','Fointer 08-19',3,1);
insert into Autoparte values(030029,'Importado',223.76,'Bomba de agua','Jetta A3-A4',3,1);
insert into Autoparte values(030030,'ACDelco',532.41,'Bomba de agua','Renault',3,1);
insert into Autoparte values(030031,'ACDelco',632.41,'Bomba de agua','Grand-i10',3,1);
insert into Autoparte values(030032,'Moresa',731.55,'Bomba de aceite','Tsuru,March,Versa',3,1);
insert into Autoparte values(030033,'ACDelco',633.32,'Bomba de aceite','Aveo,Sonic,Tornado',3,1);
insert into Autoparte values(030034,'Importado',821.82,'Bomba de aceite','Versa,Tida',3,1);
insert into Autoparte values(030035,'Power',654.05,'Bomba de aceite','Vento 08-19',3,1);
insert into Autoparte values(030036,'Moresa',956.76,'Bomba de aceite','Chevy 99-2012',3,1);
insert into Autoparte values(030037,'Moresa',672.41,'Bomba de aceite','Volkwagen-Pointer',3,1);
insert into Autoparte values(030038,'ACDelco',563.55,'Bomba de aceite','Tsuru 99-2015',3,1);
insert into Autoparte values(030039,'Moresa',762.11,'Bomba de aceite','March,Note',3,1);
insert into Autoparte values(030040,'Importado',631.41,'Bomba de aceite 12V','Gol',3,1);
insert into Autoparte values(030041,'Moresa',815.55,'Bomba de aceite','Fointer 08-19',3,1);
insert into Autoparte values(030042,'Importado',863.76,'Bomba de aceite','Jetta A3-A4',3,1);
insert into Autoparte values(030043,'ACDelco',355.41,'Bomba de aceite','Renault',3,1);
insert into Autoparte values(030044,'ACDelco',952.41,'Bomba de aceite','Grand-i10,Elantra,Ionic',3,1);	
insert into Autoparte values(030045,'Moresa',430.55,'Bomba de gasolina','Chevy 99-2012',3,1);
insert into Autoparte values(030046,'ACDelco',533.32,'Bomba de gasolina','Aveo,Sonic,Tornado',3,1);
insert into Autoparte values(030047,'Importado',321.82,'Bomba de gasolina','Versa',3,1);
insert into Autoparte values(030048,'Power',234.05,'Bomba de gasolina','Vento 08-19',3,1);
insert into Autoparte values(030048,'Moresa',456.76,'Bomba de gasolina','March',3,1);
insert into Autoparte values(030049,'Moresa',632.41,'Bomba de gasolina','Volkwagen-Pointer',3,1);
insert into Autoparte values(030050,'ACDelco',823.55,'Bomba de gasolina','Tsuru 99-2012',3,1);
insert into Autoparte values(030051,'Moresa',552.11,'Bomba de gasolina','March,Note',3,1);
insert into Autoparte values(030052,'Importado',431.41,'Bomba de gasolina','Gol',3,1);
insert into Autoparte values(030053,'Moresa',715.55,'Bomba de gasolina','Fointer 08-19',3,1);
insert into Autoparte values(030054,'Importado',223.76,'Bomba de gasolina','Jetta A3-A4',3,1);
insert into Autoparte values(030055,'ACDelco',532.41,'Bomba de gasolina','Renault',3,1);
insert into Autoparte values(030056,'ACDelco',632.41,'Bomba de gasolina','Grand-i10',3,1);
insert into Autoparte values(030057,'Bruck',31.55,'Banda Alternador','Tsuru,March,Versa',3,1);
insert into Autoparte values(030058,'Gates',933.32,'Kit Banda Distribucion','Aveo,Sonic,Tornado',3,3);
insert into Autoparte values(030059,'Importado',321.82,'Banda Alternador','Versa,Tida',3,1);
insert into Autoparte values(030060,'Gates',154.05,'Banda Alternador','Vento 08-19',3,1);
insert into Autoparte values(030061,'Bruck',956.76,'Kit Banda Distribucion','Chevy 99-2012',3,3);
insert into Autoparte values(030062,'Bruck',272.41,'Banda Alternador','Volkwagen-Pointer',3,1);
insert into Autoparte values(030063,'Gates',563.55,'Kit Banda Distribucion','Tsuru 99-2015',3,3);
insert into Autoparte values(030064,'Bruck',762.11,'Kit Banda Distribucion','March,Note',3,3);
insert into Autoparte values(030065,'Importado',131.41,'Banda Alternador 12V','Gol',3,1);
insert into Autoparte values(030066,'Bruck',215.55,'Banda Alternador','Fointer 08-19',3,1);
insert into Autoparte values(030067,'Importado',863.76,'Kit Banda Distribucion','Jetta A3-A4',3,3);
insert into Autoparte values(030068,'Gates',755.41,'Kit Banda Distribucion','Renault',3,3);
insert into Autoparte values(030069,'Gates',952.41,'Kit Banda Distribucion','Grand-i10,Elantra,Ionic',3,3);
insert into Autoparte values(030070,'ACDelco',330.55,'Kit cambio aceite c/filtro','Chevrolet,Nissan,Hyundai,Volkwagen,Ford',3,3);
insert into Autoparte values(030071,'QuakerState',533.32,'Kit cambio aceite c/filtro','Chevrolet,Nissan,Hyundai,Volkwagen,Ford',3,3);
insert into Autoparte values(030072,'Castrol',521.82,'Kit cambio aceite c/filtro','Autos con motor a Gasolina',3,3);
insert into Autoparte values(030073,'Luber',234.05,'Kit cambio aceite s/filtro','Autos con motor a Gasolina o Diesel',3,3);

----------------------------------Herramientas----------------------------------------------------
insert into Autoparte values(040001,'Torx',124.05,'Kit desarmadores-torx','Universal',4,3);
insert into Autoparte values(040002,'Petrul',232.05,'Pinzas de presion','Universal',4,1);
insert into Autoparte values(040003,'Truper',89.05,'Kit llaves alen ','Universal',4,3);
insert into Autoparte values(040004,'Urrea',324.05,'Kit pinzas-resistente ','Universal',4,3);
insert into Autoparte values(040005,'Tommer',634.05,'Gato Hidrauilico patin 1ton','Universal',4,1);
insert into Autoparte values(040006,'Truper',124.36,'Gato botella 1/2 ton','Universal',4,1);
insert into Autoparte values(040007,'Urrea',784.05,'Autocle dados mili.','Universal',4,3);
insert into Autoparte values(040008,'Craftsman',728.21,'Kit dados alt-resistencia','Universal',4,3);
insert into Autoparte values(040009,'Prostkit',391.18,'Kit desarmadores ','Universal',4,3);

----------------------------------Accesorios----------------------------------------------------

insert into Autoparte values(050001,'Mercurio',299.69,'Kit tapetes uso rudo','Universal',5,3);
insert into Autoparte values(050002,'Disney',35.01'Parasol cars','Universal',5,1);
insert into Autoparte values(050003,'Tunix',89.42,'Perilla billar','Chevy 99-12',5,1);
insert into Autoparte values(050004,'Delta',324.43,'Foco xenon A4','Universal',5,2);
insert into Autoparte values(050005,'Carfly',10.01,'Desodorante varios','Universal',5,1);
insert into Autoparte values(050006,'XPro',598.36,'Bocinas traseras','Nissan',5,2);
insert into Autoparte values(050007,'Mercurio',784.05,'Piso alfombra','Volkwagen',5,3);
insert into Autoparte values(050008,'Craftsman',728.21,'Kit cubre asientos','Universal',5,3);
insert into Autoparte values(050009,'Tunix',391.18,'Kit tapes ','Universal',5,3);


---------------------------Cliente----------------------------------------
/**
 * Aqui la contraseña esta cifrada con md5, la contraseña original es: omarhernandez
 */
insert into Usuario values(0001,'Omar','Hernandez','Galvan',1,'5574322809','omar.hernandez@gmail.com','c26b292d87f717558769f412e3a4294b');



			


