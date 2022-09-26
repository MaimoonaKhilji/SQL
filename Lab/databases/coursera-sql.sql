create database coursera;
CREATE TABLE Ages ( 
  name VARCHAR(128), 
  age INTEGER
);
INSERT INTO Ages (name, age) VALUES ('Niharika', 20);
INSERT INTO Ages (name, age) VALUES ('Hibatullah', 18);
INSERT INTO Ages (name, age) VALUES ('Billy', 25);
INSERT INTO Ages (name, age) VALUES ('Nikol', 27);
INSERT INTO Ages (name, age) VALUES ('Annie', 13);
INSERT INTO Ages (name, age) VALUES ('Nikolai', 13);

SELECT hex(name || age) AS X FROM Ages ORDER BY X;

select Br_code , concat("+",Br_code,Acc_no )from bank;