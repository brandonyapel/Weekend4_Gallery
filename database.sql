-- database name gallery

CREATE TABLE videos (
id SERIAL PRIMARY KEY,
youtube_id VARCHAR(1000),
name VARCHAR(30),
description VARCHAR(1000),
transcript VARCHAR(1000),
viewcount INT,
likes INT);

CREATE TABLE comments(
id SERIAL PRIMARY KEY,
timestamp TIMESTAMP,
comment VARCHAR(1000), 
videos_id INT);

INSERT INTO videos (youtube_id,"name",description,transcript,likes,viewcount)
VALUES
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS41NkI0NEY2RDEwNTU3Q0M2','Henry V:St. Crispins Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS4yODlGNEE0NkRGMEEzMEQy','Theoden:Ride of the Rohirrim','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS4wMTcyMDhGQUE4NTIzM0Y5','Aragorn:Not This Day','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS41MjE1MkI0OTQ2QzJGNzNG','William Wallace Freedom Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS4wOTA3OTZBNzVEMTUzOTMy','Independence Day Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS4xMkVGQjNCMUM1N0RFNEUx','Rocky Balboa Winning Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS41MzJCQjBCNDIyRkJDN0VD','Herb Brooks Miracle Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS5DQUNERDQ2NkIzRUQxNTY1','Any Given Sunday Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS45NDk1REZENzhEMzU5MDQz','Scent of A Woman Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS5GNjNDRDREMDQxOThCMDQ2','Carpe Diem Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS40NzZCMERDMjVEN0RFRThB','Rudy Regret Speech','null for now','null for now',100,100),
('UEx5Z0xuZ0FjbUJOeU5iaThMdXlOSE1DdTVxR0luZFlXOS5EMEEwRUY5M0RDRTU3NDJC','Busy Living or Dying Shawshank','null for now','null for now',100,100);