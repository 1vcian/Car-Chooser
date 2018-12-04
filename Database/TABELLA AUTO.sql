CREATE TABLE auto (
  brands 	varchar(45) NOT NULL,
  name 		varchar(45) NOT NULL PRIMARY KEY,
  type		varchar(45) NOT NULL CHECK((type = 'city car') OR (type = 'sedan') OR (type = 'cabrio') OR (type = 'coupe') OR (type = 'station wagon') OR (type = 'van') OR (type = 'suv')),

  seat		NUMERIC(1) NOT NULL CHECK((seat = 2) OR (seat = 4) OR (seat = 5) OR (seat = 7) OR (seat = 8)),

  fuel_type1	varchar(45) NOT NULL CHECK((fuel_type1 = 'petrol') OR (fuel_type1 = 'diesel') OR (fuel_type1 = 'petrol/gpl') OR (fuel_type1 = 'petrol/methane') OR (fuel_type1 = 'hybrid') OR (fuel_type1 = 'electric')),

  fuel_type2	varchar(45) CHECK((fuel_type2 = 'petrol') OR (fuel_type2 = 'diesel') OR (fuel_type2 = 'petrol/gpl') OR (fuel_type2 = 'petrol/methane') OR (fuel_type2 = 'hybrid') OR (fuel_type2 = 'electric') OR (fuel_type2= NULL)),

  fuel_type3    varchar(45) CHECK((fuel_type3 = 'petrol') OR (fuel_type3 = 'diesel') OR (fuel_type3 = 'petrol/gpl') OR (fuel_type3 = 'petrol/methane') OR (fuel_type3 = 'hybrid') OR (fuel_type3 = 'electric') OR (fuel_type3=NULL)),

  budget	varchar(10) NOT NULL,

  foto		varchar(30) NOT NULL
);








INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('alfa romeo','Giulia','sedan',5,'petrol','diesel','','36.800','giulia');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('alfa romeo','Giulietta','sedan',5,'petrol','petrol/gpl','diesel','24.500','giulietta');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('alfa romeo','Mito','sedan',4,'petrol','petrol/gpl','diesel','13.900','mito');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('alfa romeo','4c Spider','cabrio',2,'petrol','','','75.500','4c spider');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('alfa romeo','4c Coupe','coupe',2,'petrol','','','65.500','4c coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('alfa romeo','Stelvio','suv',5,'petrol','diesel','','46.700','stelvio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','A1','sedan',4,'petrol','','','22.500','a1');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','A3','sedan',5,'petrol','diesel','','24.800','a3');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','A4','sedan',5,'petrol','diesel','hybrid','33.600','a4');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','A5','sedan',5,'petrol','petrol/methane','hybrid','41.600','a5');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','A6','sedan',5,'hybrid','','','53.800','a6');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','A7','sedan',4,'hybrid','','','62.600','a7');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','A8','sedan',5,'hybrid','','','94.800','a8');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','R8 Spider','cabrio',2,'petrol','','','160.700','r8 spider');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','TT Spider','cabrio',2,'petrol','diesel','','40.300','tt spider');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','A5 Coupe','coupe',4,'petrol','diesel','hybrid','42.000','a5 coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','R8 Coupe','coupe',2,'petrol','','','147.400','r8 coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','Q2','suv',5,'petrol','diesel','','25.900','q2');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','Q3','suv',5,'petrol','diesel','','30.900','q3');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','Q5','suv',5,'petrol','diesel','','44.400','q5');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','Q7','suv',5,'petrol','hybrid','','64.100','q7');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('audi','Q8','suv',5,'hybrid','','','78.450','q8');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 3','sedan',5,'petrol','diesel','','40.500','serie 3');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 4','sedan',5,'petrol','diesel','','42.600','serie 4');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 5','sedan',5,'petrol','diesel','hybrid','53.300','serie 5');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 6','sedan',5,'petrol','diesel','','62.550','serie 6');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 7','sedan',5,'petrol','diesel','hybrid','88.850','serie 7');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 2 Cabrio','cabrio',4,'petrol','diesel','','37.100','serie 2 cabrio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 4 Cabrio','cabrio',4,'petrol','diesel','','52.600','serie 4 cabrio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 6 Cabrio','cabrio',4,'petrol','diesel','','96.250','serie 6 cabrio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 2 Coupe','coupe',4,'petrol','diesel','','30.950','serie 2 coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 4 Coupe','coupe',4,'petrol','diesel','','42.650','serie 4 coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 6 Coupe','coupe',4,'petrol','diesel','','83.650','serie 6 coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 8','coupe',4,'petrol','diesel','','104.700','serie 8');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 3 Station','station wagon',5,'petrol','diesel','','36.700','serie 3 station');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Serie 5 Station','station wagon',5,'petrol','diesel','','55.750','serie 5 station');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Active Tourer','van',5,'petrol','diesel','hybrid','26.600','active tourer');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','Gran Tourer','van',7,'petrol','diesel','','28.900','gran tourer');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','X3','suv',5,'petrol','diesel','','44.250','x3');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','X4','suv',5,'petrol','diesel','','53.850','x4');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','X5','suv',5,'petrol','diesel','','72.900','x5');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','X6','suv',5,'petrol','diesel','','74.850','x6');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('bmw','X7','suv',7,'petrol','diesel','','92.900','x7');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('citroen','C1','city car',4,'petrol','','','10.000','c1');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('citroen','C3','sedan',5,'petrol','petrol/gpl','diesel','12.600','c3');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('citroen','C4 SpaceTourer','van',5,'petrol','diesel','','26.350','c4 spacetourer');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('citroen','SpaceTourer','van',8,'diesel','','','31.350','spacetourer');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('citroen','C4 Cactus','suv',5,'diesel','','','19.850','c4 cactus');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ferrari','812 Superfast','coupe',2,'petrol','','','300.300','812 superfast');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ferrari','488 Spider','coupe',2,'petrol','','','254.680','488 spider');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ferrari','Portofino','cabrio',4,'petrol','','','196.061','portofino');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('fiat','500','city car',4,'petrol','petrol/gpl','diesel','14.350','500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('fiat','Panda','city car',4,'petrol','petrol/methane','petrol/gpl','11.390','panda');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('fiat','Punto','sedan',5,'petrol','petrol/gpl','petrol/methane','14.340','punto');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('fiat','Tipo','sedan',5,'petrol','petrol/gpl','diesel','14.800','tipo');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('fiat','124 Spider','cabrio',2,'petrol','','','28.000','124 spider');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('fiat','500L','van',5,'petrol','petrol/gpl','petrol/methane','18.600','500l');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('fiat','Qubo','van',5,'petrol','petrol/methane','diesel','14.500','qubo');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('fiat','500X','suv',5,'petrol','petrol/gpl','diesel','19.000','500x');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ford','Fiesta','sedan',5,'petrol','diesel','','14.500','fiesta');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ford','Focus','sedan',5,'petrol','diesel','','20.000','focus');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ford','Mustang Cabrio','cabrio',4,'petrol','','','45.500','mustang cabrio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ford','Mustang','coupe',4,'petrol','','','41.000','mustang coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ford','B-Max','van',5,'petrol','petrol/gpl','diesel','17.250','b-max');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ford','C-Max','van',7,'petrol','diesel','','20.900','c-max');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('ford','EcoSport','suv',5,'petrol','diesel','','19.100','ecosport');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('jeep','Compass','suv',5,'petrol','diesel','','25.900','compass');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('jeep','Cherokee','suv',5,'diesel','','','43.000','cherokee');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('jeep','Wrangler','suv',4,'petrol','diesel','','48.000','wrangler');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('kia','Picanto','city car',5,'petrol','petrol/gpl','','11.000','picanto');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('lancia','ypsilon','city car',5,'petrol','petrol/gpl','petrol/methane','16.600','ypsilon');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('land rover','Discovery','suv',5,'petrol','diesel','','58.900','discovery');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('land rover','Range Rover','suv',5,'petrol','diesel','hybrid','106.700','range rover');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('land rover','Range Rover Evoque Cabrio','suv',4,'diesel','','','58.930','range rover evoque cabrio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('lamborghini','Aventador','coupe',2,'petrol','','','345.497','aventador');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('lamborghini','Huracan','coupe',2,'petrol','','','185.000','huracan');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('lamborghini','Urus','station wagon',5,'petrol','','','207.000','urus');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('maserati','Ghibli','sedan',5,'petrol','diesel','','72.186','ghibli');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('maserati','Gran Turismo','coupe',4,'petrol','','','130.000','gran turismo');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('maserati','Levante','suv',5,'petrol','diesel','','77.107','levante');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','CLA','sedan',5,'petrol','diesel','','32.130','cla');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe A','sedan',5,'petrol','diesel','','30.650','classe a');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe C','sedan',5,'petrol','diesel','hybrid','37.666','classe c');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe E','sedan',5,'petrol','diesel','hybrid','48.978','classe e');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe S','sedan',5,'petrol','diesel','hybrid','96.170','classe s');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe C Cabrio','cabrio',4,'petrol','diesel','hybrid','52.894','classe c cabrio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','SLC','cabrio',2,'petrol','','','37.570','slc');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe E Cabrio','cabrio',4,'petrol','diesel','hybrid','61.315','classe e cabrio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','GT Spider','cabrio',2,'petrol','','','142.270','gt spider');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe C Coupe','coupe',4,'petrol','diesel','hybrid','43.650','classe c coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe E Coupe','coupe',4,'petrol','diesel','hybrid','54.800','classe e coupe');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','CLS Coupe','coupe',5,'diesel','hybrid','','77.900','cls coupe');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','CLA Station','station wagon',5,'petrol','diesel','','32.700','cla station');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe C Station','station wagon',5,'petrol','diesel','hybrid','36.600','classe c station');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe E Station','station wagon',5,'petrol','diesel','hybrid','50.000','classe e station');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Citan','van',7,'petrol','diesel','','20.300','citan');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe V','van',7,'diesel','','','36.400','classe v');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','Classe G','suv',5,'petrol','','','116.900','classe g');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','GLE','suv',5,'diesel','hybrid','','69.000','gle');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mercedes','GLS','suv',7,'petrol','diesel','','83.520','gls');


INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mini','Mini 3p','sedan',4,'petrol','diesel','','17.950','mini 3p');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mini','Mini 5p','sedan',5,'petrol','diesel','','18.800','mini 5p');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('mini','Mini Countryman','suv',5,'petrol','diesel','hybrid','25.600','mini countryman');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('nissan','Micra','sedan',5,'petrol','diesel','','12.850','micra');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('nissan','Pulsar','sedan',5,'petrol','diesel','','18.440','pulsar');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('nissan','370Z','cabrio',2,'petrol','diesel','','42.510','370z');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('nissan','GT-R','coupe',4,'petrol','','','101.90','gt-r');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('nissan','e-NV200 Evalia','van',7,'electric','','','42.900','e-nv200 evalia');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('nissan','NV200 Evalia','van',5,'diesel','','','25.244','nv200 evalia');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('nissan','Juke','suv',5,'petrol','petrol/gpl','diesel','17.600','juke');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('nissan','Qashqai','suv',5,'petrol','diesel','','21.250','qashqai');


INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Adam','city car',4,'petrol','petrol/gpl','','11.900','adam');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Karl','city car',5,'petrol','petrol/gpl','','12.200','karl');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Astra','sedan',5,'petrol','petrol/methane','diesel','18.400','astra');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Corsa','sedan',5,'petrol','petrol/gpl','diesel','13.500','corsa');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Cascada','cabrio',4,'petrol','diesel','','31.700','cascada');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Zafira','van',7,'petrol','diesel','','27.800','zafira');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Crossland X','suv',5,'petrol','petrol/gpl','diesel','17.400','crossland x');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Grandland X','suv',5,'petrol','diesel','','26.000','grandland x');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('opel','Mokka X','suv',5,'petrol','petrol/gpl','diesel','20.050','mokka x');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','108','city car',4,'petrol','','','11.700','108');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','iOn','city car',4,'electric','','','28.150','ion');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','208','sedan',5,'petrol','petrol/gpl','diesel','14.700','208');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','308','sedan',5,'petrol','diesel','','21.200','308');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','508','sedan',5,'petrol','diesel','','30.300','508');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','308 Station','station wagon',5,'petrol','diesel','','22.100','308 station');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','508 Station','station wagon',5,'diesel','','','32.900','508 station');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','Traveller','van',8,'diesel','','','30.900','traveller');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','Rifter','van',5,'petrol','diesel','','21.550','rifter');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','2008','suv',5,'petrol','diesel','','18.000','2008');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','3008','suv',5,'petrol','diesel','','26.800','3008');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('peugeot','5008','suv',7,'petrol','diesel','','28.400','5008');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('porsche','Panamera','sedan',5,'petrol','hybrid','','96.900','panamera');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('porsche','Cayanne','suv',5,'petrol','hybrid','','80.500','cayanne');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('porsche','911 coupe','coupe',4,'petrol','','','102.800','911 coupe');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('renault','Twingo','city car',4,'petrol','petrol/gpl','','10.600','twingo');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('renault','Clio','sedan',5,'petrol','petrol/gpl','diesel','13.900','clio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('renault','Megane','sedan',5,'petrol','diesel','','23.900','megane');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('renault','Espace','van',5,'petrol','diesel','','34.800','espace');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('renault','Scenic','van',5,'petrol','diesel','','22.050','scenic');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('renault','Kangoo','van',5,'petrol','diesel','','20.100','kangoo');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('renault','Captur','suv',5,'petrol','diesel','','16.550','captur');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('renault','Kadjar','suv',5,'petrol','diesel','','21.300','kadjar');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('smart','forfour','sedan',4,'petrol','electric','','14.200','forfour');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('smart','fortwo','city car',2,'petrol','hybrid','','13.400','fortwo');


INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('tesla','Model S','sedan',5,'electric','','','72.600','model s');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('tesla','Model X','sedan',5,'electric','','','98.800','model x');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','Aygo','city car',4,'petrol','','','11.600','aygo');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','Auris','sedan',5,'hybrid','','','24.500','auris');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','Prius','sedan',5,'hybrid','','','29.500','prius');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','Yaris','sedan',5,'petrol','hybrid','','14.500','yaris');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','GT86','cabrio',4,'petrol','','','31.800','gt86');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','Proace Verso','van',8,'diesel','','','29.900','proace verso');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','C-HR','suv',5,'petrol','hybrid','','25.100','c-hr');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','RAV4','suv',5,'diesel','hybrid','','30.500','rav4');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('toyota','Land Cruiser','suv',5,'diesel','','','59.000','land cruiser');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','e-up!','city car',4,'electric','','','27.000','e-up!');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','up!','city car',4,'petrol','petrol/methane','','11.000','up!');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','e-Golf','sedan',5,'electric','','','40.100','e-golf');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Golf','sedan',5,'petrol','petrol/methane','diesel','20.700','golf');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Polo','sedan',5,'petrol','petrol/methane','diesel','13.600','polo');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Maggiolino Cabrio','cabrio',4,'petrol','diesel','','26.000','maggiolino cabrio');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Passat','station wagon',5,'diesel','','','33.100','passat');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Caddy','van',7,'petrol','petrol/methane','diesel','21.200','caddy');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Multivan','van',7,'diesel','','','38.900','multivan');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Touran','van',7,'petrol','diesel','','28.400','touran');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','T-Roc','suv',5,'petrol','diesel','','23.100','t-roc');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Tiguan','suv',5,'petrol','diesel','','26.000','tiguan');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volkswagen','Touareg','suv',5,'diesel','','','61.000','touareg');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volvo','S90','sedan',5,'petrol','diesel','hybrid','47.600','s90');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volvo','V40','sedan',5,'petrol','diesel','','24.600','v40');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volvo','V60','station wagon',5,'petrol','diesel','hybrid','38.410','v60');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volvo','V90','station wagon',5,'petrol','diesel','hybrid','46.340','v90');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volvo','XC40','suv',5,'petrol','diesel','','31.850','xc40');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volvo','XC60','suv',5,'petrol','diesel','hybrid','46.700','xc60');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget,foto) VALUES ('volvo','XC90','suv',7,'petrol','diesel','hybrid','64.500','xc90');





