CREATE TABLE auto (
  brands 	varchar(45) NOT NULL,
  name 		varchar(45) NOT NULL PRIMARY KEY,
  type		varchar(45) NOT NULL CHECK((type = 'city car') OR (type = 'sedan') OR (type = 'cabrio') OR (type = 'coupe') OR (type = 'station wagon') OR (type = 'van') OR (type = 'suv')),
  seat		NUMERIC(1) NOT NULL CHECK((seat = 2) OR (seat = 4) OR (seat = 5) OR (seat = 7) OR (seat = 8)),
  fuel_type1	varchar(45) NOT NULL CHECK((fuel_type1 = 'petrol') OR (fuel_type1 = 'diesel') OR (fuel_type1 = 'petrol/gpl') OR (fuel_type1 = 'petrol/methane') OR (fuel_type1 = 'hybrid') OR (fuel_type1 = 'electric')),
  fuel_type2	varchar(45) CHECK((fuel_type2 = 'petrol') OR (fuel_type2 = 'diesel') OR (fuel_type2 = 'petrol/gpl') OR (fuel_type2 = 'petrol/methane') OR (fuel_type2 = 'hybrid') OR (fuel_type2 = 'electric') OR (fuel_type2= NULL)),
  fuel_type3    varchar(45) CHECK((fuel_type3 = 'petrol') OR (fuel_type3 = 'diesel') OR (fuel_type3 = 'petrol/gpl') OR (fuel_type3 = 'petrol/methane') OR (fuel_type3 = 'hybrid') OR (fuel_type3 = 'electric') OR (fuel_type3=NULL)),
  budget	varchar(10) NOT NULL
);







INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('alfa romeo','Giulia','sedan',5,'petrol','diesel','','36.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('alfa romeo','Giulietta','sedan',5,'petrol','petrol/gpl','diesel','24.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('alfa romeo','Mito','sedan',4,'petrol','petrol/gpl','diesel','13.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('alfa romeo','4c Spider','cabrio',2,'petrol','','','75.500' );
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('alfa romeo','4c Coupe','coupe',2,'petrol','','','65.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('alfa romeo','Stelvio','suv',5,'petrol','diesel','','46.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','A1','sedan',4,'petrol','','','22.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','A3','sedan',5,'petrol','diesel','','24.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','A4','sedan',5,'petrol','diesel','hybrid','33.600');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','A5','sedan',5,'petrol','petrol/methane','hybrid','41.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','A6','sedan',5,'hybrid','','','53.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','A7','sedan',4,'hybrid','','','62.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','A8','sedan',5,'hybrid','','','94.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','R8 Spider','cabrio',2,'petrol','','','160.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','TT Spider','cabrio',2,'petrol','diesel','','40.300');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','A5 Coupe','coupe',4,'petrol','diesel','hybrid','42.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','R8 Coupe','coupe',2,'petrol','','','147.400');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','Q2','suv',5,'petrol','diesel','','25.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','Q3','suv',5,'petrol','diesel','','30.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','Q5','suv',5,'petrol','diesel','','44.400');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','Q7','suv',5,'petrol','hybrid','','64.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('audi','Q8','suv',5,'hybrid','','','78.450');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 3','sedan',5,'petrol','diesel','','40.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 4','sedan',5,'petrol','diesel','','42.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 5','sedan',5,'petrol','diesel','hybrid','53.300');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 6','sedan',5,'petrol','diesel','','62.550');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 7','sedan',5,'petrol','diesel','hybrid','88.850');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 2 Cabrio','cabrio',4,'petrol','diesel','','37.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 4 Cabrio','cabrio',4,'petrol','diesel','','52.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 6 Cabrio','cabrio',4,'petrol','diesel','','96.250');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 2 Coupe','coupe',4,'petrol','diesel','','30.950');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 4 Coupe','coupe',4,'petrol','diesel','','42.650');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 6 Coupe','coupe',4,'petrol','diesel','','83.650');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 8','coupe',4,'petrol','diesel','','104.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 3 Station','station wagon',5,'petrol','diesel','','36.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Serie 5 Station','station wagon',5,'petrol','diesel','','55.750');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Active Tourer','van',5,'petrol','diesel','hybrid','26.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','Gran Tourer','van',7,'petrol','diesel','','28.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','X3','suv',5,'petrol','diesel','','44.250');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','X4','suv',5,'petrol','diesel','','53.850');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','X5','suv',5,'petrol','diesel','','72.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','X6','suv',5,'petrol','diesel','','74.850');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('bmw','X7','suv',7,'petrol','diesel','','92.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('citroen','C1','city car',4,'petrol','','','10.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('citroen','C3','sedan',5,'petrol','petrol/gpl','diesel','12.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('citroen','C4 SpaceTourer','van',5,'petrol','diesel','','26.350');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('citroen','SpaceTourer','van',8,'diesel','','','31.350');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('citroen','C4 Cactus','suv',5,'diesel','19.850','','');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ferrari','812 Superfast','coupe',2,'petrol','','','300.300');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ferrari','488 Spider','coupe',2,'petrol','','','254.680');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ferrari','Portofino','cabrio',4,'petrol','','','196.061');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('fiat','500','city car',4,'petrol','petrol/gpl','diesel','14.350');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('fiat','Panda','city car',4,'petrol','petrol/methane','petrol/gpl','11.390');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('fiat','Punto','sedan',5,'petrol','petrol/gpl','petrol/methane','14.340');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('fiat','Tipo','sedan',5,'petrol','petrol/gpl','diesel','14.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('fiat','124 Spider','cabrio',2,'petrol','','','28.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('fiat','500L','van',5,'petrol','petrol/gpl','petrol/methane','18.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('fiat','Qubo','van',5,'petrol','petrol/methane','diesel','14.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('fiat','500X','suv',5,'petrol','petrol/gpl','diesel','19.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ford','Fiesta','sedan',5,'petrol','diesel','','14.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ford','Focus','sedan',5,'petrol','diesel','','20.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ford','Mustang Cabrio','cabrio',4,'petrol','','','45.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ford','Mustang','coupe',4,'petrol','','','41.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ford','B-Max','van',5,'petrol','petrol/gpl','diesel','17.250');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ford','C-Max','van',7,'petrol','diesel','','20.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('ford','EcoSport','suv',5,'petrol','diesel','','19.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('jeep','Compass','suv',5,'petrol','diesel','','25.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('jeep','Cherokee','suv',5,'diesel','','','43.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('jeep','Wralngler','suv',4,'petrol','diesel','','48.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('kia','Picanto','city car',5,'petrol','petrol/gpl','','11.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('lancia','ypsilon','city car',5,'petrol','petrol/gpl','petrol/methane','16.600');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('land rover','Discovery','suv',5,'petrol','diesel','','58.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('land rover','Range Rover','suv',5,'petrol','diesel','hybrid','106.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('land rover','Range Rover Evoque Cabrio','suv',4,'diesel','','','58.930');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('lamborghini','Aventador','coupe',2,'petrol','','','345.497');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('lamborghini','Huracan','coupe',2,'petrol','','','185.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('lamborghini','Urus','station wagon',5,'petrol','','','207.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('maserati','Ghibli','sedan',5,'petrol','diesel','','72.186');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('maserati','Gran Turismo','coupe',4,'petrol','','','130.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('maserati','Levante','suv',5,'petrol','diesel','','77.107');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','CLA 4p','sedan',5,'petrol','diesel','','32.130');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe A','sedan',5,'petrol','diesel','','30.650');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe C','sedan',5,'petrol','diesel','hybrid','37.666');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe E','sedan',5,'petrol','diesel','hybrid','48.978');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe S','sedan',5,'petrol','diesel','hybrid','96.170');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe C Cabrio','cabrio',4,'petrol','diesel','hybrid','52.894');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','SLC','cabrio',2,'petrol','','','37.570');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe E Cabrio','cabrio',4,'petrol','diesel','hybrid','61.315');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','GT Spider','cabrio',2,'petrol','','','142.270');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe C Coupe','coupe',4,'petrol','diesel','hybrid','43.650');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe E Coupe','coupe',4,'petrol','diesel','hybrid','54.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','CLS Coupe','coupe',5,'diesel','hybrid','','77.900');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','CLA 5p','station wagon',5,'petrol','diesel','','32.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe C Station','station wagon',5,'petrol','diesel','hybrid','36.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe E Station','station wagon',5,'petrol','diesel','hybrid','50.000');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Citan','van',7,'petrol','diesel','','20.300');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe V','van',7,'diesel','','','36.400');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','Classe G','suv',5,'petrol','','','116.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','GLE','suv',5,'diesel','hybrid','','69.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mercedes','GLS','suv',7,'petrol','diesel','','83.520');


INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mini','Mini 3p','sedan',4,'petrol','diesel','','17.950');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mini','Mini 5p','sedan',5,'petrol','diesel','','18.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('mini','Mini Countryman','suv',5,'petrol','diesel','hybrid','25.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('nissan','Micra','sedan',5,'petrol','diesel','','12.850');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('nissan','Pulsar','sedan',5,'petrol','diesel','','18.440');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('nissan','370Z','cabrio',2,'petrol','diesel','','42.510');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('nissan','GT-R','coupe',4,'petrol','','','101.90');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('nissan','e-NV200 Evalia','van',7,'electric','','','42.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('nissan','NV200 Evalia','van',5,'diesel','','','25.244');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('nissan','Juke','suv',5,'petrol','petrol/gpl','diesel','17.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('nissan','Qashqai','suv',5,'petrol','diesel','','21.250');


INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Adam','city car',4,'petrol','petrol/gpl','','11.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Karl','city car',5,'petrol','petrol/gpl','','12.200');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Astra','sedan',5,'petrol','petrol/methane','diesel','18.400');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Corsa','sedan',5,'petrol','petrol/gpl','diesel','13.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Cascada','cabrio',4,'petrol','diesel','','31.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Zafira','van',7,'petrol','diesel','','27.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Crossland X','suv',5,'petrol','petrol/gpl','diesel','17.400');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Grandland X','suv',5,'petrol','diesel','','26.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('opel','Mokka X','suv',5,'petrol','petrol/gpl','diesel','20.050');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','108','city car',4,'petrol','','','11.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','iOn','city car',4,'electric','','','28.150');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','208','sedan',5,'petrol','petrol/gpl','diesel','14.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','308','sedan',5,'petrol','diesel','','21.200');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','508','sedan',5,'petrol','diesel','','30.300');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','308 Station','station wagon',5,'petrol','diesel','','22.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','508 Station','station wagon',5,'diesel','','','32.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','Traveller','van',8,'diesel','','','30.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','Rifter','van',5,'petrol','diesel','','21.550');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','2008','suv',5,'petrol','diesel','','18.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','3008','suv',5,'petrol','diesel','','26.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('peugeot','5008','suv',7,'petrol','diesel','','28.400');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('porsche','Panamera','sedan',5,'petrol','hybrid','','96.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('porsche','Cayanne','suv',5,'petrol','hybrid','','80.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('porsche','911 coupe','coupe',4,'petrol','','','102.800');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('renault','Twingo','city car',4,'petrol','petrol/gpl','','10.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('renault','Clio','sedan',5,'petrol','petrol/gpl','diesel','13.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('renault','Megane','sedan',5,'petrol','diesel','','23.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('renault','Espace','van',5,'petrol','diesel','','34.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('renault','Scenic','van',5,'petrol','diesel','','22.050');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('renault','Kangoo','van',5,'petrol','diesel','','20.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('renault','Captur','suv',5,'petrol','diesel','','16.550');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('renault','Kadjar','suv',5,'petrol','diesel','','21.300');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('smart','forfour','sedan',4,'petrol','electric','','14.200');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('smart','fortwo','city car',2,'petrol','hybrid','','13.400');


INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('tesla','Model S','sedan',5,'electric','','','72.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('tesla','Model X','sedan',5,'electric','','','98.800');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','Aygo','city car',4,'petrol','','','11.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','Auris','sedan',5,'hybrid','','','24.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','Prius','sedan',5,'hybrid','','','29.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','Yaris','sedan',5,'petrol','hybrid','','14.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','GT86','cabrio',4,'petrol','','','31.800');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','Proce Verso','van',8,'diesel','','','29.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','C-HR','suv',5,'petrol','hybrid','','25.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','RAV4','suv',5,'diesel','hybrid','','30.500');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('toyota','Land Cruiser','suv',5,'diesel','','','59.000');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','e-up!','city car',4,'electric','','','27.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','up!','city car',4,'petrol','petrol/methane','','11.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','e-Golf','sedan',5,'electric','','','40.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Golf','sedan',5,'petrol','petrol/methane','diesel','20.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Polo','sedan',5,'petrol','petrol/methane','diesel','13.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Maggiolino Cabrio','cabrio',4,'petrol','diesel','','26.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Passat','station wagon',5,'diesel','','','33.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Caddy','van',7,'petrol','petrol/methane','diesel','21.200');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Multivan','van',7,'diesel','','','38.900');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Touran','van',7,'petrol','diesel','','28.400');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','T-Roc','suv',5,'petrol','diesel','','23.100');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Tiguan','suv',5,'petrol','diesel','','26.000');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volkswagen','Touareg','suv',5,'diesel','','','61.000');

INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volvo','S90','sedan',5,'petrol','diesel','hybrid','47.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volvo','V40','sedan',5,'petrol','diesel','','24.600');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volvo','V60','station wagon',5,'petrol','diesel','hybrid','38.410');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volvo','V90','station wagon',5,'petrol','diesel','hybrid','46.340');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volvo','XC40','suv',5,'petrol','diesel','','31.850');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volvo','XC60','suv',5,'petrol','diesel','hybrid','46.700');
INSERT INTO auto (brands,name,type,seat,fuel_type1,fuel_type2,fuel_type3,budget) VALUES ('volvo','XC90','suv',7,'petrol','diesel','hybrid','64.500');





