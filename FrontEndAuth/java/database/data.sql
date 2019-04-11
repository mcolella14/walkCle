-- Password for this user is 'greatwall'
INSERT INTO users (username, password, salt, role) VALUES
(
    'user',
    'FjZDm+sndmsdEDwNtfr6NA==',
    'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
    'user'
);
BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS users_location;

CREATE TABLE location (
  location_name varchar PRIMARY KEY,
  area varchar (100) NOT NULL,
  category varchar (100) NOT NULL,
  place_id varchar NOT NULL
);
        
CREATE TABLE users_location (
  location_name varchar,
  id serial 
);

CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(255) NOT NULL UNIQUE,     -- Username
  password varchar(32) NOT NULL,      -- Password
  salt varchar(256) NOT NULL,          -- Password Salt
  role varchar(255) NOT NULL default('user')
);


INSERT INTO location (location_name, area, category, place_id) VALUES ('Rocket Morgage Field House',          'Downtown',          'Sports',        'ChIJtZl8uoH6MIgRIJlSUVz--lM');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Progressive Field',                   'Downtown',          'Sports',        'ChIJ7fYQtob6MIgRhTPPwA213FI');
INSERT INTO location (location_name, area, category, place_id) VALUES ('First Energy Field',                  'Downtown',          'Sports',        'ChIJTbhI1IXwMIgR6YSqsVRS1cE');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Rock & Roll Hall of Fame',            'Downtown',          'Museums',       'ChIJHZLHDYPwMIgRXxZaKR6dG5c');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Cleveland Museum of Natural History', 'University Circle', 'Museums',       'ChIJITY1VYz7MIgRH4nF3v7V9Tg');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Great Lakes Science Center',          'Downtown',          'Museums',       'ChIJSaHMiYPwMIgRgphvNUOhoEQ');
INSERT INTO location (location_name, area, category, place_id) VALUES ('A Christmas Story House',             'Tremont',           'Museums',       'ChIJbQVW7Kj6MIgRGb69WOQyj9M');
INSERT INTO location (location_name, area, category, place_id) VALUES ('The Cleveland Museum of Art',         'University Circle', 'Museums',       'ChIJ2Ql60437MIgRajTzalRnRgI');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Flannery''s Pub',                     'Downtown',          'Bar/Rest',      'ChIJP3W_O4D6MIgRYxYqWtb7meI');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Lola Bistro',                         '4th Street',        'Bar/Rest',      'ChIJXbkJPYD6MIgRbSBLp6BJa18');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Market Garden Brewery',               'Ohio City',         'Bar/Rest',      'ChIJyZkvv23wMIgRWOFuFcRalQw');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Red, the Steakhouse',                 'Downtown',          'Bar/Rest',      'ChIJEVW8R4D6MIgRW5pk_EaSj5c');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Great Lakes Brewing Company',         'Ohio City',         'Bar/Rest',      'ChIJA-V2u23wMIgRe6rtMBxi8uQ');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Platform Beer Co.',                   'Ohio City',         'Bar/Rest',      'ChIJ-xabzj_wMIgRO-DbK72Zz54');
INSERT INTO location (location_name, area, category, place_id) VALUES ('House of Blues Cleveland',            'Downtown',          'Entertainment', 'ChIJ15LtA4D6MIgRFQ2Z570KOsk');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Agora Theater & Ballroom',            'Downtown',          'Entertainment', 'ChIJXTi4a1H6MIgR3237iegzTnc');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Jacobs Pavilion at Nautica',          'The Flatts',        'Entertainment', 'ChIJNxCeWWPwMIgRKSX1PNBL7ds');
INSERT INTO location (location_name, area, category, place_id) VALUES ('JACK Cleveland Casino',               'Downtown',          'Entertainment', 'ChIJ1UUut3_wMIgRfUMLS2QpNH8');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Severance Hall',                      'University Circle', 'Entertainment', 'ChIJi-tgFX36MIgRmqCcjfPSppU');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Playhouse Square',                    'Downtown',          'Entertainment', 'ChIJHX68MX36MIgRGZAjrfHtTw0');


ALTER TABLE users_location
ADD PRIMARY KEY (location_name, id);

ALTER TABLE users_location
ADD FOREIGN KEY (id) REFERENCES users(id);

ALTER TABLE users_location
ADD FOREIGN KEY (location_name) REFERENCES location(location_name);



COMMIT;