--
-- Docs
-- https://www.w3schools.com/sql/default.asp
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Playground:
-- https://sqlfiddle.com/sqlite/online-compiler
-- https://sqlite.org/fiddle/
--

-- Izveidot tabulu (CREATE)
-- Izveidot 10 pokemonu ierakstus (INSERT)
-- Atlasīt visus pokemonus un visas kolonnas (SELECT)
-- Atlasīt pokemonu nosaukums tiem kuriem ir "Fire" tips (SELECT, WHERE)
-- Atlasīt pokemonus ar kopējām statistikām (total) virs 500 (SELECT, WHERE)
-- Atlasīt pokemonus ar "Flying" tipu un statistikam virs 500 (SELECT, WHERE)
-- Atlasīt unikālās vērtības no type_1 stabiņa (DISTINCT)

-- Sakārtot pokemonus pēc augstāka HP (ORDER BY)

-- Izdzēst tos, kam attack mazāks par 50 (DELETE, WHERE)

--INIT database
CREATE TABLE Pokemon (
  Number INTEGER,
  Name TEXT,
  Type_1 TEXT,
  Type_2 TEXT,
  Total INTEGER,
  HP INTEGER,
  Attack INTEGER,
  Defense INTEGER
);

INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (1,"Bulbasaur","Grass","Poison",318,45,49,49);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (2,"Ivysaur","Grass","Poison",405,60,62,63);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (3,"Venusaur","Grass","Poison",525,80,82,83);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (3,"VenusaurMega Venusaur","Grass","Poison",625,80,100,123);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (4,"Charmander","Fire","",309,39,52,43);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (5,"Charmeleon","Fire","",405,58,64,58);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (6,"Charizard","Fire","Flying",534,78,84,78);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (6,"CharizardMega Charizard X","Fire","Dragon",634,78,130,111);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (6,"CharizardMega Charizard Y","Fire","Flying",634,78,104,78);
INSERT INTO Pokemon(Number, Name, Type_1, Type_2, Total, HP, Attack, Defense) VALUES (7,"Squirtle","Water","",314,44,48,65);
-- QUERY database

SELECT * FROM Pokemon;

SELECT * FROM Pokemon
WHERE Type_1="Fire"
OR Type_2="Fire";

SELECT * FROM Pokemon
WHERE Total>500;

SELECT * FROM Pokemon
WHERE Type_1="Flying"
OR Type_2="Flying"
AND Total>500;

SELECT DISTINCT Type_1 FROM Pokemon;

SELECT * FROM Pokemon
ORDER BY HP DESC;

DELETE FROM Pokemon
WHERE Attack<50;

SELECT * FROM Pokemon;
