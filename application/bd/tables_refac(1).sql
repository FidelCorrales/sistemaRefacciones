create table Autoparte(
id_autoparte NUMBER(6) primary key not null,
marca varchar2(50) not null,
material varchar2(50) not null,
disponibilidad number(6) not null,
no_modelo number(6) not null,
precio NUMBER(5) not null,
descripcion varchar2(50)  not null,
compatibilidad varchar2(90),
fk_tipo_autopartes number(6)  not null,
constraint fk_tipo_autopartes foreign key(fk_tipo_autopartes)references Tipo_Autoparte(idtipo_autoparte)
);

-------------

create table Tipo_Autoparte(
idtipo_autoparte NUMBER(6) primary key not null,
nombre varchar2(50) not null);

--------------

create table Unidad_Medida(
idunidad_medida NUMBER(6) primary key not null,
nombre varchar2(50) not null);

---------------

create table Usuario(
id_cliente varchar2(10) primary key not null,
nombre varchar2(20),
apaterno varchar2(20),
amaterno varchar2(20),
genero number(2),
telefono varchar2(10) not null,
correo varchar2(30) not null,
password varchar2(90) not null,
direccion varchar(90)not null,
compras_realizadas number(100)not null
);

--------------------

create table Pedido(
id_pedido number(10) primary key not null,
estatus varchar2(20) not null,
fecha_compra date not null,
total_pedido number(6) not null,
fk_cliente varchar2(10) not null,
constraint fk_cliente foreign key(fk_cliente)references Usuario(id_cliente));

--------------

create table Pedido_has_Autoparte(
fk_pedido number(10) not null,
fk_autoparte number(6) not null,
cantidad number(6),
constraint fk_pedido foreign key(fk_pedido)references Pedido(id_pedido),
constraint fk_autoparte foreign key(fk_autoparte)references Autoparte(id_autoparte));

----------------

create table Comentarios(
	id_comentario number(5) primary key not null,
	nombre varchar2(20),
	correo varchar2(30) not null,
	comentario varchar2(150) not null
);

-----------------


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
insert into Autoparte values(020001,'Fritec','semi-metalica',10,121234,324.53,'Balata semi-metalica para autos con sistema ABS','Tida,Aveo,Vento,Gol,March,Tsuru,Rio-KIA',2);
insert into Autoparte values(020002,'Duralast','metalica',15,134234,556.53,'Balata metalica para autos de carga','Vehiculos pick-up',2);
insert into Autoparte values(020003,'Fritaxi','semi-metalica',10,121253,222.01,'Balata semi-metalica para taxi','Tida,Aveo,Vento,Gol,March,Tsuru,Rio-KIA,etc',2);
insert into Autoparte values(020004,'Duralast','semi-metalica',10,121834,330.96,'Rotor freno delantero con aro de balero ABS','Chevrolet(Aveo,Cruze,Sonic,Tornado)',2);
insert into Autoparte values(020005,'ACDelco','metal',13,146234,538.00,'Tambor freno trasero con 4 orificios para birlo','Nissan(Tida,Versa,March,Note)',2);
insert into Autoparte values(020006,'Importado','metalico',16,121234,631.46,'Rotor freno delantero 5 birlos','VolkWagen(Gol,Vento,Pointer,Atlantic,Jetta-Clasic)',2);
insert into Autoparte values(020007,'Duralast','metalico',10,11234,92.00,'Juego de Resortes Todo en Uno H1341','Chevrolet(Aveo,Cruze,Sonic,Tornado)',2);
insert into Autoparte values(020008,'Duralast','metalico',10,121274,132.00,'Juego de Resortes Todo en Uno H7389','Nissan(Tida,Versa,March,Note)',2);
insert into Autoparte values(020009,'Duralast','semi-metalica',10,191234,204.46,'Juego de Resortes Todo en Uno H7150','VolkWagen(Gol,Vento,Pointer,Atlantic,Jetta-Clasic)',2);
insert into Autoparte values(020010,'ACDelco','metalica',10,121234,653.06,'Mordaza de Freno-Delantero izq','Aveo,Cruze,Sonic,Tornado',2);
insert into Autoparte values(020011,'ACDelco','semi-metalica',10,161234,653.06,'Mordaza de Freno-Delantero der','Aveo,Cruze,Sonic,Tornado',2);
insert into Autoparte values(020012,'ACDelco','semi-metalica',10,124234,421.00,'Mordaza de Freno-Delantero izq','Tida,Versa,March,Note',2);
insert into Autoparte values(020013,'ACDelco','semi-metalica',10,121634,421.00,'Mordaza de Freno-Delantero der','Tida,Versa,March,Note',2);
insert into Autoparte values(020014,'ACDelco','metalica',15,121234,367.99,'Mordaza de Freno-Delantero izq','Gol,Vento,Pointer,Atlantic,Jetta-Clasic',2);
insert into Autoparte values(020015,'ACDelco','metalica',10,121231,367.99,'Mordaza de Freno-Delantero der','Gol,Vento,Pointer,Atlantic,Jetta-Clasic',2);
insert into Autoparte values(020016,'Duralast','metalica',10,121234,761.99,'Mordaza de Freno-Delantero izq','Grand-i10,Ionic,',2);
insert into Autoparte values(020016,'Duralast','semi-metalica',10,121234,734.99,'Mordaza de Freno-Delantero der','Grand-i10,Ionic',2);

---------------------------------Suspension------------------------------------------------------------

insert into Autoparte values(010001,'Importado','semi-metalica',10,211234,321.26,'Barra estabilizadora','Aveo,Sonic,',1);
insert into Autoparte values(010002,'Bosh','metalicos',10,241234,932.37,'Amortiguadores-Delanteros con base','Cruze,',1);
insert into Autoparte values(010003,'NSK','semi-metalica',10,341234,127.26,'Rotula','Aveo',1);
insert into Autoparte values(010004,'Importado','metalica',10,341234,89.12,'Juego de huesos delanteros izq','Aveo,',1);
insert into Autoparte values(010005,'Importado','metalica',18,333234,89.12,'Juego de huesos delanteros der','Aveo,',1);
insert into Autoparte values(010006,'ACDelco','metalica',10,341834,745.03,'Amortiguadores-Traseros','Aveo,Cruze,Sonic,Tornado,',1);
insert into Autoparte values(010007,'Bruck','semi-metalica',19,321234,531.76,'Orquilla con buje flotante izq','Aveo,Sonic',1);
insert into Autoparte values(010008,'Bruck','semi-metalica',22,341234,531.76,'Orquilla con buje flotante der','Aveo,Sonic',1);
insert into Autoparte values(010009,'SKF','metalica',10,391234,224.55,'Balero delantero con masa','Cruze',1);
insert into Autoparte values(010010,'SKF','metalico',10,361234,174.76,'Balero trasero','Aveo,Cruze,Sonic,Tornado',1);
insert into Autoparte values(010011,'ACDelco','metalica',10,345234,821.41,'Amortiguadores-Delanteros','Versa,March',1);
insert into Autoparte values(010012,'Importada','metalica',10,361234,99.99,'Rotula','Tida',1);
insert into Autoparte values(010013,'Importado','semi-metalica',10,371234,343.19,'Terminales s/lado','Tida,Versa,March,Note,',1);
insert into Autoparte values(010014,'Importado','semi-metalica',13,311234,992.74,'Buje flotante interno','Versa,',1);
insert into Autoparte values(010015,'ACDelco','semi-metalica',10,348234,999.03,'Amortiguadores-Traseros','Tida,Versa,March,Note,',1);
insert into Autoparte values(010016,'Bruck','metalica',15,341234,974.76,'Orquilla izq','Tida,Versa,March,Note',1);
insert into Autoparte values(010017,'Bruck','metalica',10,141234,932.76,'Orquilla der','Tida,Versa,March,Note',1);
insert into Autoparte values(010018,'Importado','metalico',20,361234,654.55,'Balero delantero','Tida,Versa,March,Note',1);
insert into Autoparte values(010019,'SKF','semi-metalica',10,371234,175.76,'Balero trasero','Tida,Versa,March,Note',1);
insert into Autoparte values(010020,'Importado','semi-metalica',8,311234,321.26,'Barra estabilizadora','Grand-i10,Elantra',1);
insert into Autoparte values(010021,'Bosh','metalica',10,341274,932.37,'Amortiguadores-Delanteros con base','Grand-i10,',1);
insert into Autoparte values(010022,'NSK','metalica',10,321234,127.26,'Rotula','Aveo',1);
insert into Autoparte values(010023,'Importado','metalics',20,341344,89.12,'Juego de huesos delanteros izq','Grand-i10,Elantra,',1);
insert into Autoparte values(010024,'Importado','metalics',10,341234,89.12,'Juego de huesos delanteros der','Grand-i10,Elantra,',1);
insert into Autoparte values(010025,'ACDelco','metalicos',12,341237,745.03,'Amortiguadores-Traseros','Grand-i10,',1,2);
insert into Autoparte values(010026,'Bruck','semi-metalica',10,341234,531.76,'Orquilla con buje flotante izq','Grand-i10',1);
insert into Autoparte values(010027,'Bruck','semi-metalica',10,351234,531.76,'Orquilla con buje flotante der','Grand-i10',1);
insert into Autoparte values(010028,'SKF','semi-metalica',10,391234,224.55,'Balero delantero con masa','Grand-i10',1);
insert into Autoparte values(010029,'SKF','semi-metalica',10,341234,174.76,'Balero trasero','Grand-i10',1);
insert into Autoparte values(010030,'ACDelco','metalica',15,397234,1521.41,'Amortiguadores-Delanteros','Jetta-Clasic,vento',1);
insert into Autoparte values(010031,'Importada','semi-metalica',10,312534,99.99,'Rotula','Vento',1);
insert into Autoparte values(010032,'Importado',343.19,'Terminales s/lado','Gol,Vento,Pointer,Atlantic,Jetta-Clasic',1);
insert into Autoparte values(010033,'Importado',992.74,'Buje flotante interno','Gol,Vento,Pointer,Atlantic,Jetta-Clasic,',1);
insert into Autoparte values(010034,'ACDelco',981.03,'Amortiguadores-Traseros','Gol,Vento,Pointer,Atlantic,Jetta-Clasic',1);
insert into Autoparte values(010035,'Bruck',974.76,'Orquilla izq','Gol',1);
insert into Autoparte values(010036,'Bruck',932.76,'Orquilla der','Gol',1);
insert into Autoparte values(010037,'Importado',654.55,'Balero delantero','Vento,Gol',1);
insert into Autoparte values(010038,'SKF','semi-metalica',10,1234,175.76,'Balero trasero','Vento,Gol',1);

----------------------------------Partes externas motor-----------------------------------------

insert into Autoparte values(030001,'Bosh','semi-metalica',10,14123433.55,'Bujia 2 electrodos','Chevrolet,Nissan,Volkwagen,Hyundai,KIA',3);
insert into Autoparte values(030002,'Champions','semi-metalica',10,141234,24.76,'Bujia de iridio','Aveo,Cruze,Sonic,Tornado',3);
insert into Autoparte values(030003,'NGK','semi-metalica',10,141234,15.41,'Bujia de platino','Versa,March',3);
insert into Autoparte values(030004,'ACDelco','semi-metalica',10,141234,26.55,'Bujia 4 electrodos','Chevrolet,Nissan,Volkwagen,Hyundai,KIA,SEAT',3);
insert into Autoparte values(030005,'Champions','semi-metalica',10,141234,22.76,'Bujia de iridio','Aveo,Cruze,Sonic,Tornado,BMW',3);
insert into Autoparte values(030006,'NGK','semi-metalica',10,141234,14.41,'Bujia de platino','Versa,March,Grand-i10,Elantra,Golf,Caribe',3);
insert into Autoparte values(030007,'Bosh','semi-metalica',10,34,765.55,'Alternador','Chevy 99-2012',3);
insert into Autoparte values(030008,'Bosh','semi-metalica',10,589234,963.11,'Alternador','Aveo,Sonic,Tornado',3);
insert into Autoparte values(030009,'Importado','semi-metalica',10,589234,545.41,'Alternador 12V','Versa',3);
insert into Autoparte values(030010,'Duralast','semi-metalica',10,589234,888.55,'Alternador','Vento 08-19',3);
insert into Autoparte values(030011,'Bosh','semi-metalica',10,589234,999.76,'Alternador polea externa inferior','March',3);
insert into Autoparte values(030012,'ACDelco','semi-metalica',10,589234,743.41,'Alternador','Volkwagen-Pointer',3);
insert into Autoparte values(030013,'Bosh','semi-metalica',10,589234,765.55,'Alternador','Tsuru 99-2012',3);
insert into Autoparte values(030014,'Bosh','semi-metalica',10,589234,963.11,'Alternador','March,Note',3);
insert into Autoparte values(030015,'Importado','semi-metalica',10,589234,545.41,'Alternador 12V','Gol',3);
insert into Autoparte values(030016,'Duralast','semi-metalica',10,589234,888.55,'Alternador','Fointer 08-19',3,1);
insert into Autoparte values(030017,'Bosh','semi-metalica',10,589234,999.76,'Alternador polea externa inferior','Jetta A3-A4',3);
insert into Autoparte values(030018,'ACDelco','semi-metalica',10,589234,743.41,'Alternador','Renault',3,1);
insert into Autoparte values(030019,'Moresa','semi-metalica',10,589234,430.55,'Bomba de agua','Chevy 99-2012',3);
insert into Autoparte values(030020,'ACDelco','semi-metalica',10,589234,533.32,'Bomba de agua','Aveo,Sonic,Tornado',3);
insert into Autoparte values(030021,'Importado','semi-metalica',10,589234,321.82,'Bomba de agua','Versa',3);
insert into Autoparte values(030022,'Power','semi-metalica',10,589234,234.05,'Bomba de agua','Vento 08-19',3);
insert into Autoparte values(030023,'Moresa','semi-metalica',10,589234,456.76,'Bomba de agua','March',3);
insert into Autoparte values(030024,'Moresa','semi-metalica',10,589234,632.41,'Bomba de agua','Volkwagen-Pointer',3);
insert into Autoparte values(030025,'ACDelco','semi-metalica',10,589234,823.55,'Bomba de agua','Tsuru 99-2012',3);
insert into Autoparte values(030026,'Moresa','semi-metalica',10,589234,552.11,'Bomba de agua','March,Note',3);
insert into Autoparte values(030027,'Importado',431.41,'Bomba de agua','Gol',3);
insert into Autoparte values(030028,'Moresa','semi-metalica',10,589234,715.55,'Bomba de agua','Fointer 08-19',3);
insert into Autoparte values(030029,'Importado','semi-metalica',10,589234,223.76,'Bomba de agua','Jetta A3-A4',3);
insert into Autoparte values(030030,'ACDelco','semi-metalica',10,589234,532.41,'Bomba de agua','Renault',3);
insert into Autoparte values(030031,'ACDelco','semi-metalica',10,589234,632.41,'Bomba de agua','Grand-i10',3);
insert into Autoparte values(030032,'Moresa','semi-metalica',10,589234,731.55,'Bomba de aceite','Tsuru,March,Versa',3);
insert into Autoparte values(030033,'ACDelco','semi-metalica',10,589234,633.32,'Bomba de aceite','Aveo,Sonic,Tornado',3);
insert into Autoparte values(030034,'Importado','semi-metalica',10,589234,821.82,'Bomba de aceite','Versa,Tida',3);
insert into Autoparte values(030035,'Power',654.05,'Bomba de aceite','Vento 08-19',3);
insert into Autoparte values(030036,'Moresa','semi-metalica',10,589234,956.76,'Bomba de aceite','Chevy 99-2012',3);
insert into Autoparte values(030037,'Moresa',672.41,'Bomba de aceite','Volkwagen-Pointer',3);
insert into Autoparte values(030038,'ACDelco','semi-metalica',10,589234,563.55,'Bomba de aceite','Tsuru 99-2015',3);
insert into Autoparte values(030039,'Moresa','semi-metalica',10,589234,762.11,'Bomba de aceite','March,Note',3);
insert into Autoparte values(030040,'Importado','semi-metalica',10,589234,631.41,'Bomba de aceite 12V','Gol',3);
insert into Autoparte values(030041,'Moresa','semi-metalica',10,951234,815.55,'Bomba de aceite','Fointer 08-19',3);
insert into Autoparte values(030042,'Importado','semi-metalica',10,471234,863.76,'Bomba de aceite','Jetta A3-A4',3);
insert into Autoparte values(030043,'ACDelco','semi-metalica',10,741234,355.41,'Bomba de aceite','Renault',3);
insert into Autoparte values(030044,'ACDelco','semi-metalica',10,971234,952.41,'Bomba de aceite','Grand-i10,Elantra,Ionic',3);	
insert into Autoparte values(030045,'Moresa','semi-metalica',10,781234,430.55,'Bomba de gasolina','Chevy 99-2012',3);
insert into Autoparte values(030046,'ACDelco','semi-metalica',10,871234,533.32,'Bomba de gasolina','Aveo,Sonic,Tornado',3);
insert into Autoparte values(030047,'Importado','semi-metalica',10,881234,321.82,'Bomba de gasolina','Versa',3);
insert into Autoparte values(030048,'Power',,'semi-metalica',10,773423.05,'Bomba de gasolina','Vento 08-19',3);
insert into Autoparte values(030048,'Moresa','semi-metalica',10,211234,456.76,'Bomba de gasolina','March',3);
insert into Autoparte values(030049,'Moresa','semi-metalica',10,141234,632.41,'Bomba de gasolina','Volkwagen-Pointer',3);
insert into Autoparte values(030050,'ACDelco','semi-metalica',10,141234,823.55,'Bomba de gasolina','Tsuru 99-2012',3);
insert into Autoparte values(030051,'Moresa','semi-metalica',10,141234,552.11,'Bomba de gasolina','March,Note',3);
insert into Autoparte values(030052,'Importado','semi-metalica',10,141234,431.41,'Bomba de gasolina','Gol',3);
insert into Autoparte values(030053,'Moresa','semi-metalica',10,141234,715.55,'Bomba de gasolina','Fointer 08-19',3);
insert into Autoparte values(030054,'Importado','semi-metalica',10,141234,223.76,'Bomba de gasolina','Jetta A3-A4',3);
insert into Autoparte values(030055,'ACDelco','semi-metalica',10,141234,532.41,'Bomba de gasolina','Renault',3);
insert into Autoparte values(030056,'ACDelco','semi-metalica',10,141234,632.41,'Bomba de gasolina','Grand-i10',3);
insert into Autoparte values(030057,'Bruck','plasticos',10,141234,31.55,'Banda Alternador','Tsuru,March,Versa',3);
insert into Autoparte values(030058,'Gates','plasticos',10,141234,933.32,'Kit Banda Distribucion','Aveo,Sonic,Tornado',3);
insert into Autoparte values(030059,'Importado','plasticos',10,141234,321.82,'Banda Alternador','Versa,Tida',3);
insert into Autoparte values(030060,'Gates','plasticos',10,141234,154.05,'Banda Alternador','Vento 08-19',3);
insert into Autoparte values(030061,'Bruck','plasticos',10,141234,956.76,'Kit Banda Distribucion','Chevy 99-2012',3);
insert into Autoparte values(030062,'Bruck','plasticos',10,141234,272.41,'Banda Alternador','Volkwagen-Pointer',3);
insert into Autoparte values(030063,'Gates','plasticos',10,141234,563.55,'Kit Banda Distribucion','Tsuru 99-2015',3);
insert into Autoparte values(030064,'Bruck','plasticos',10,341284,762.11,'Kit Banda Distribucion','March,Note',3);
insert into Autoparte values(030065,'Importado','plasticos',10,381234,131.41,'Banda Alternador 12V','Gol',3);
insert into Autoparte values(030066,'Bruck','plasticos',10,347234,215.55,'Banda Alternador','Fointer 08-19',3);
insert into Autoparte values(030067,'Importado','plasticos',10,371234,863.76,'Kit Banda Distribucion','Jetta A3-A4',3);
insert into Autoparte values(030068,'Gates','plasticos',10,341239,755.41,'Kit Banda Distribucion','Renault',3);
insert into Autoparte values(030069,'Gates','plasticos',10,381234,952.41,'Kit Banda Distribucion','Grand-i10,Elantra,Ionic',3);
insert into Autoparte values(030070,'ACDelco',330.55,'liquidos',10,321434,'Kit cambio aceite c/filtro','Chevrolet,Nissan,Hyundai,Volkwagen,Ford',3);
insert into Autoparte values(030071,'QuakerState','liquidos',10,391234,533.32,'Kit cambio aceite c/filtro','Chevrolet,Nissan,Hyundai,Volkwagen,Ford',3);
insert into Autoparte values(030072,'Castrol','liqudios',20,368534,521.82,'Kit cambio aceite c/filtro','Autos con motor a Gasolina',3);
insert into Autoparte values(030073,'Luber','liquidos',30,311234,234.05,'Kit cambio aceite s/filtro','Autos con motor a Gasolina o Diesel',3);

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

insert into Autoparte values(050001,'Mercurio','semi-metalica',10,121234,299.69,'Kit tapetes uso rudo','Universal',5);
insert into Autoparte values(050002,'Disney','plasticos',10,141334,35.01'Parasol cars','Universal',5);
insert into Autoparte values(050003,'Tunix','semi-metalica',10,141934,89.42,'Perilla billar','Chevy 99-12',5);
insert into Autoparte values(050004,'Delta','vidrios',10,141234,324.43,'Foco xenon A4','Universal',5);
insert into Autoparte values(050005,'Carfly','plasticos',10,141834,10.01,'Desodorante varios','Universal',5);
insert into Autoparte values(050006,'XPro','semi-metalicas',20,141234,598.36,'Bocinas traseras','Nissan',5);
insert into Autoparte values(050007,'Mercurio','poliester',10,131234,784.05,'Piso alfombra','Volkwagen',5);
insert into Autoparte values(050008,'Craftsman','tela',10,141534,728.21,'Kit cubre asientos','Universal',5);
insert into Autoparte values(050009,'Tunix','plastico',10,141234,391.18,'Kit tapes','Universal',5);


---------------------------Cliente----------------------------------------
/**
 * Aqui la contraseña esta cifrada con md5, la contraseña original es: omarhernandez
 */
insert into Usuario values(0001,'Omar','Hernandez','Galvan',1,'5574322809','omar.hernandez@gmail.com','c26b292d87f717558769f412e3a4294b','Rosales av. Simon, col. Buenavista',20);



			


