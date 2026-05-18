# FOR TESTING

DROP TABLE IF EXISTS book_author;
DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS quote;
DROP TABLE IF EXISTS book;

# CREATE TABLES

CREATE TABLE book(
 book_id INTEGER PRIMARY KEY,
 title VARCHAR(30),
 edition INTEGER,
 published_year INTEGER
);
 
CREATE TABLE author(
 author_id INTEGER PRIMARY KEY,
 name VARCHAR(30),
 born_year INTEGER,
 dead_year INTEGER
);

CREATE TABLE book_author(
 book_id INTEGER NOT NULL,
 author_id INTEGER NOT NULL,
CONSTRAINT book_author_pk PRIMARY KEY(book_id,author_id),
CONSTRAINT book_author_fk1 FOREIGN KEY(book_id) REFERENCES book(book_id),
CONSTRAINT book_author_fk2 FOREIGN KEY(author_id) REFERENCES author(author_id)
);

CREATE TABLE quote(
 quote_id INTEGER PRIMARY KEY,
 quote VARCHAR(255),
 book_id INTEGER NOT NULL,
 CONSTRAINT quote_book_fk FOREIGN KEY(book_id) REFERENCES book(book_id)
);

# ADD DATA

INSERT INTO book VALUES
(1,'Cappelens store håndarbeidsbok',1,1995),
(2,'Matematisk formelsamling',1,2001),
(3,'Usability Engineering',1,1993),
(4,'An Introduction to Database Systems',6,1994),
(5,'Italiensk grammatikk',1,1981),
(6,'Atlas for folkeskolen',NULL,1957),
(7,'Håndarbeidsbok for husmorskoler',1,1948),
(8,'Silicon Snake Oil: Second Thoughts on the Information Highway',1,1995),
(9,'The Psychology of Everyday Things',1,1988),
(10,'Emotional Design',1,2004);

INSERT INTO author VALUES
(1,'Rottmann, Karl',NULL,NULL),
(2,'Nielsen, Jakob',1957,NULL),
(3,'Date, Christopher John',1941,NULL),
(4,'Ulleland, Magnus',1929,2016),
(5,'Lyngaas, Reidar',1910,1984),
(6,'Refsdal, Anfinn',1866,1939),
(7,'Bråten, Kristin',NULL,NULL),
(8,'Westbye, Ingeborg',NULL,NULL),
(9,'Stoll, Clifford',1950,NULL),
(10,'Norman, Donald A.',1935,NULL);

INSERT INTO book_author VALUES
(2,1),
(3,2),
(4,3),
(5,4),
(6,5),
(6,6),
(7,7),
(7,8),
(8,9),
(9,10),
(10,10);

INSERT INTO quote VALUES
(1,'Til luftmaskekjeden legger du opp 3 lm for hver rute (totalt 3 lm ganget med antall ruter i mønsterrapporten) pluss 1. Tilføy 4 lm hvis den første ruten er tom, men bare 2 lm hvis den er fylt.',1),
(2,'Dersom ligningssystemet er homogent, dvs. $\alpha_1 = \alpha_2 = \ldots = \alpha_n=0", er den nødvendige og tilstrekkelige betingelsen for at det finnes en løsning forskjellig fra den trivielle ($x_1 = x_2 = \ldots = x_n = 0$) at $D=0$.',2),
(3,'A basic reason for the existence of usability engineering is that it is impossible to design an optimal user interface just by giving it your best try. Users have infinite potential for making unexpected misinterpretations of interface elements and for performing their job in a different way than you imagine.',3),
(4,'The most basic advice with respect to interface evaluation is simply to *do it*, and especially to conduct some user testing. The benefits of employing som reasonable usability engineering methods to evaluate a user interface rather than releasing it without evaluation are much larger than the incremental benefits of using exactly the right methods for a given product.',3),
(5,'Users are human, too. Therefore, one cannot subject them to the kind of "destructive testing" that is popular in the components industry.',3),
(6,'Briefly, a relational system is a system in which: 1. The data is perceived by the user as tables (and nothing but tables); and 2. The operators at the user''s disposal (e.g. for data retrieval) are operators that generate new tables from old.',4),
(7,'Referential integrity: The database must not contain any unmatched foreign key values.',4),
(8,'Uttrykket *mi lavo* betyr ''jeg vasker mig (selv)'', og pronomenet *mi* som som objekt til verbet. Derfor kaller vi verbet *lavarsi* for et refleksivt verb. Sier vi derimot *mi lavo le mani*, er *mi* ikke lenger objekt, men heller hensynsledd; likevel kan vi for vårt praktiske formål kalle verbet refleksivt.',5),
(9,'Konjunktiv er obligatorisk i innrømmelsesbisetninger (setninger innledet av konjunksjoner som betyr ''selv om'' o.l.).',5),
(10,'Da det italienske verbum har spesielle bøyningsendelser for hver person, er ikke subjektspronomenet absolutt nødvendig. Det brukes likevel i ikke liten utstrekning, og bare lang bruk av språket kan lære en å bruke det riktig.',5),
(11,'Isotermer er linjer gjennom steder med samme temperatur.',6),
(12,'At lufttemperaturen på et sted er redusert til havflaten vil si at lufttemperaturen der er øket med 0,5 grader C for hver 1++ m av høyden på stedet.',6),
(13,'FINNLAND',6),
(14,'Vi må få opp en linindustri. Landbruks- og småbruksskolene må gå *foran* og ta opp igjen dyrkningen, og husmorskolene må veve linvarene. Det gjelder å bli sjølberget også i denne produksjonsgren. La linåkrene med sine vakre blå blomster igjen bølge i bygdene.',7),
(15,'Fra gammelt av har det vært alminnelig å angi hvor mang snes (20 tinder) eller basmer (30 tinder) vevskjeen har inneholdt på en alen (63 cm). Den mest brukte tellingsmåte nå er å telle hvor mange tinder skjeen har på 10 cm.',7),
(16,'Det velvære som følger med et velholdt lintøyforråd, det være seg dekketøy, sengetøy eller underklær av alle slag, preger alltid husmoren, og det i like høy grad enten forrådet er stort eller lite.',7),
(17,'Where''s all the promised productivity of computers? Will the Internet actually be useful in commerce?',8),
(18,'No, I don''t need a computer program to tell me what books or music I''ll like. Friends, reviews, and browsing work just fine, thank you. Intelligent agents are a fantasy sprouted in the tomorrowland og MIT''s media laboratory.',8),
(19,'Interestingly enough, the common tendency to blame ourselves for failures with everyday objects goes against the normal attributions people make. I general, it has been found that people attribute their own problems to the environment, those of other people to their personalities.',9),
(20,'If a design depends upon labels, it may be faulty. Labels are important and often necessary, but the appropriate use of natural mappings can minimize the need for them. Wherever labels seem necessary, consider another design.',9);