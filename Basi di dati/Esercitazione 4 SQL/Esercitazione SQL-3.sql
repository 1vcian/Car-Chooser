
CREATE TABLE lavoratore(
codice 			NUMERIC(5)		PRIMARY KEY,
nome 			VARCHAR(20)		NOT NULL,
cognome 		VARCHAR(20)		NOT NULL,
inprogetto		NUMERIC(10)		NOT NULL,
insindacato		VARCHAR(20)		NOT NULL 
);	

CREATE TABLE sindacato(
nome			VARCHAR(20)		PRIMARY KEY,
tipo			VARCHAR(20)		check ((tipo = 'S') OR (tipo = 'D') OR (tipo ='C') OR (tipo = 'ES') OR (tipo='ED') OR (tipo='B')),	
capo			NUMERIC(5)		NOT NULL		
);

CREATE TABLE progetto(
codice			NUMERIC(10)		PRIMARY KEY,
usura			INT 			check (usura > 0) NOT NULL DEFAULT 1
);
	
	
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (100,'Mario','Rossi',1000,'CISL');
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (110,'Paolo','Verdi',2000,'CISL');		
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (120,'Giorgio','Gialli',2000,'CISL');		
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (130,'Carlo','Neri',2000,'CGIL');
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (140,'Dario','Grigi',3000,'CGIL');	
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (150,'Riccardo','Marroni',3000,'CGIL');	
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (160,'Stefano','Violi',4000,'CGIL');
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (170,'Marco','Fabbri',4000,'UIL');	
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (180,'Guido','Maestri',5000,'UIL');	
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (190,'Alberto','Virgili',5000,'COBAS');
INSERT INTO lavoratore (codice,nome,cognome,inprogetto,insindacato) VALUES (200,'Silvio','Salti',5000,'COBAS');

INSERT INTO progetto (codice,usura) VALUES (1000,1);
INSERT INTO progetto (codice,usura) VALUES (2000,2);		
INSERT INTO progetto (codice,usura) VALUES (3000,2);		
INSERT INTO progetto (codice,usura) VALUES (4000,4);
INSERT INTO progetto (codice,usura) VALUES (5000,5);	
INSERT INTO progetto (codice,usura) VALUES (6000,3);	
INSERT INTO progetto (codice,usura) VALUES (7000,2);

INSERT INTO sindacato (nome,tipo,capo) VALUES ('CISL','C',100);
INSERT INTO sindacato (nome,tipo,capo) VALUES ('CGIL','S',130);	
INSERT INTO sindacato (nome,tipo,capo) VALUES ('UIL','D',180);	
INSERT INTO sindacato (nome,tipo,capo) VALUES ('COBAS','B',190);
INSERT INTO sindacato (nome,tipo,capo) VALUES ('CFAS',null,120);

alter table lavoratore 
add constraint vsindacato foreign key (insindacato) references sindacato(nome) ON DELETE CASCADE;

alter table lavoratore
add constraint vprogetto foreign key (inprogetto) references progetto(codice);

alter table sindacato
add constraint vlavoratore foreign key (capo) references lavoratore(codice) ON DELETE CASCADE;

CREATE VIEW operazionefulljoin(codice,nome,cognome,inprogetto,insindacato,codiceProgetto,usuraProgetto,nomeSindacato,tipoSindacato,capoSindacato) as
select *
from lavoratore full outer join progetto on lavoratore.inprogetto = progetto.codice full outer join sindacato on lavoratore.codice = sindacato.capo


