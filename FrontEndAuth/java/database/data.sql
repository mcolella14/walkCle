-- Password for this user is 'greatwall'
INSERT INTO users (username, password, salt, role) VALUES
(
    'user',
    'FjZDm+sndmsdEDwNtfr6NA==',
    'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
    'user'
);


DROP TABLE IF EXISTS users cascade;
DROP TABLE IF EXISTS location cascade;
DROP TABLE IF EXISTS users_location cascade;

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
INSERT INTO location (location_name, area, category, place_id) VALUES ('USS Cod Submarine Memorial',          'Downtown',          'Museums',       'ChIJQ16XKoPwMIgRa5G5UJpGlRk');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Soldiers and Sailors Monument',       'Downtown',          'Landmark',      'ChIJX64UxH_wMIgRIDDsnkEDIAc');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Greater Cleveland Aquarium',          'The Flatts',        'Museums',       'ChIJyRdfZGPwMIgRwsMVPtK-sSU');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Music Box Supper Club',               'The Flatts',        'Bar/Rest',      'ChIJg8-B2mPwMIgRaFCEYA0JA6o');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Hofbräuhaus Cleveland',               'Downtown',          'Bar/Rest',      'ChIJy241x3z6MIgRkX0PyjCFmpc');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Hilarities',                          '4th Street',        'Entertainment', 'ChIJO30TPoD6MIgRi5uEvXPCEUk');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Wonder Bar',                          '4th Street',        'Bar/Rest',      'ChIJPXn_FYD6MIgRMyhVQuBNoYU');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Butcher and the Brewer',              '4th Street',        'Bar/Rest',      'ChIJcd3yPoD6MIgRaK17Vbfg7lc');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Mabel''s BBQ',                        '4th Street',        'Bar/Rest',      'ChIJxyl0FoD6MIgRnbT7H1XUxrk');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Tower City Center',                   'Downtown',          'Landmark',      'ChIJW0rAHn_wMIgRljZDiED2hXQ');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Fountain Of Eternal Life',            'Downtown',          'Landmark',      'ChIJD3s4QoDwMIgRun0FBqrC9vc');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Steamship William G. Mather Museum',  'Downtown',          'Museums',       'ChIJDRfY6oTwMIgRtMSVj_OwSKo');
INSERT INTO location (location_name, area, category, place_id) VALUES ('GOODTIME III',                        'Downtown',          'Entertainment', 'ChIJq0Xfp5zwMIgR5Y6U_azx0Y4');
INSERT INTO location (location_name, area, category, place_id) VALUES ('The Arcade Cleveland',                'Downtown',          'Entertainment', 'ChIJE67_B4D6MIgRUjHinWaHVPI');
INSERT INTO location (location_name, area, category, place_id) VALUES ('West Side Market',                    'Ohio City',         'Landmark',      'ChIJnzfZu23wMIgRXsydHOM2tKs');
INSERT INTO location (location_name, area, category, place_id) VALUES ('TownHall',                            'Ohio City',         'Bar/Rest',      'ChIJt1HyxG3wMIgR8crgUncealE');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Ohio City Burrito',                   'Ohio City',         'Bar/Rest',      'ChIJG_2RK2zwMIgRI9NkH4noeds');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Forest City Brewery',                 'Ohio City',         'Bar/Rest',      'ChIJA98893LwMIgR5frK9zY9LTI');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Tremont Taphouse',                    'Tremont',           'Bar/Rest',      'ChIJc0O-lQvwMIgRSOwPU9S91BI');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Tremont Park',                        'Tremont',           'Park',          'ChIJz8dWZqT6MIgR4bhoCF0RIck');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Lincoln Park',                        'Tremont',           'Park',          'ChIJ7QFAMKD6MIgRqPGnVVKCh8Y');
INSERT INTO location (location_name, area, category, place_id) VALUES ('The Flying Monkey Pub',               'Tremont',           'Bar/Rest',      'ChIJmxYzc6L6MIgRc-zXIRdKKLs');
INSERT INTO location (location_name, area, category, place_id) VALUES ('Parallax',                            'Tremont',           'Bar/Rest',      'ChIJO2W2rZ_6MIgRwImdm6lF-yg');





ALTER TABLE users_location
ADD PRIMARY KEY (location_name, id);

ALTER TABLE users_location
ADD FOREIGN KEY (id) REFERENCES users(id);

ALTER TABLE users_location
ADD FOREIGN KEY (location_name) REFERENCES location(location_name);

ALTER TABLE location
ADD lat float,
ADD lng float,
ADD description varchar
;

UPDATE location
SET description = 'Rocket Mortgage FieldHouse is a multi-purpose arena in downtown Cleveland, Ohio, United States. 
                        The building is the home of the Cleveland Cavaliers of the National Basketball Association, 
                        the Cleveland Monsters of the American Hockey League, 
                        and the Cleveland Gladiators of the Arena Football League.'
                        
WHERE place_id = 'ChIJtZl8uoH6MIgRIJlSUVz--lM';

UPDATE location
SET lat = 41.49647969999999, lng = -81.6882129
WHERE place_id = 'ChIJtZl8uoH6MIgRIJlSUVz--lM';

UPDATE location
SET description = 'Progressive Field is a baseball park located in the downtown area of Cleveland, Ohio, United States. 
                        It is the home field of the Cleveland Indians of Major League Baseball and, together with Rocket Morgage Field House, 
                        is part of the Gateway Sports and Entertainment Complex.'
                        
WHERE place_id = 'ChIJ7fYQtob6MIgRhTPPwA213FI';

UPDATE location
SET lat = 41.496211, lng = -81.6852289
WHERE place_id = 'ChIJ7fYQtob6MIgRhTPPwA213FI';

UPDATE location
SET description = 'FirstEnergy Stadium is a multi-purpose stadium in Cleveland, Ohio, United States, primarily for American football. 
                        It is the home field of the Cleveland Browns of the National Football League, and serves as a venue for other 
                        events such as college and high school football, soccer, and concerts.'
                        
WHERE place_id = 'ChIJTbhI1IXwMIgR6YSqsVRS1cE';

UPDATE location
SET lat = 41.5060535, lng = -81.6995481
WHERE place_id = 'ChIJTbhI1IXwMIgR6YSqsVRS1cE';

UPDATE location
SET description = 'The Rock and Roll Hall of Fame, located on the shore of Lake Erie in downtown Cleveland, Ohio, recognizes and archives the history of the 
                        best-known and most influential artists, producers, engineers, and other notable figures who have had some major influence 
                        on the development of rock and roll.'
                        
WHERE place_id = 'ChIJHZLHDYPwMIgRXxZaKR6dG5c'; 

UPDATE location
SET lat = 41.5085414, lng = -81.6953685
WHERE place_id = 'ChIJHZLHDYPwMIgRXxZaKR6dG5c';

UPDATE location
SET description = 'The Cleveland Museum of Natural History is a natural history museum located approximately five miles east of downtown Cleveland, Ohio 
                        in University Circle, a 550-acre concentration of educational, cultural and medical institutions.'

WHERE place_id = 'ChIJITY1VYz7MIgRH4nF3v7V9Tg';

UPDATE location
SET lat = 41.511522, lng = -81.61287999999999
WHERE place_id = 'ChIJITY1VYz7MIgRH4nF3v7V9Tg';

UPDATE location
SET description = 'The Great Lakes Science Center is a museum and educational facility in downtown Cleveland, Ohio, United States. 
                        Many of the exhibits document the features of the natural environment in the Great Lakes region of the United States.'

WHERE place_id = 'ChIJSaHMiYPwMIgRgphvNUOhoEQ';

UPDATE location
SET lat = 41.5074416, lng = -81.6967337
WHERE place_id = 'ChIJSaHMiYPwMIgRgphvNUOhoEQ';

UPDATE location
SET description = 'A Christmas Story House is an attraction and museum in Cleveland, Ohio''s Tremont neighborhood. The 19th-century Victorian, 
                        which was used in the exterior and some interior scenes of Ralphie Parker''s house in the 1983 film A Christmas Story, 
                        was purchased by a private developer in 2004 and has been restored and renovated to appear as it did both inside and outside 
                        in the film. The museum is part of a complex of four buildings devoted to the film, and is open to the public year-round.'

WHERE place_id = 'ChIJbQVW7Kj6MIgRGb69WOQyj9M';

UPDATE location
SET lat = 41.4687292, lng = -81.68739309999999
WHERE place_id = 'ChIJbQVW7Kj6MIgRGb69WOQyj9M';

UPDATE location
SET description = 'The Cleveland Museum of Art is an art museum in Cleveland, Ohio, located in the Wade Park District, 
                        in the University Circle neighborhood on the city''s east side. Internationally renowned for its substantial holdings of 
                        Asian and Egyptian art, the museum houses a diverse permanent collection of more than 45,000 works of art from around the world. 
                        The museum provides general admission free to the public. With a $755 million endowment, it is the fourth-wealthiest art museum 
                        in the United States. With about 770,000 visitors annually (2018), it is one of the most visited art museums in the world.'

WHERE place_id = 'ChIJ2Ql60437MIgRajTzalRnRgI';

UPDATE location
SET lat = 41.5090411, lng = -81.6120703
WHERE place_id = 'ChIJ2Ql60437MIgRajTzalRnRgI';

UPDATE location 
SET description = 'Flannery''s Irish Pub has been a Cleveland landmark since 1997. Renowned for our perfect pint, great comfort food, and the 
                        friendliest staff in Cleveland, Flannery''s is called home by all that visit. Flannery''s Irish Pub is a great place to go to 
                        lunch, meet friends after work, to shoot a game of pool, or to fuel up before a Cav’s game. Located directly across from 
                        the Rocket Morgage Field House on the corner of 4th and Prospect, in the heart of the Gateway Neighborhood, and are the only Irish 
                        Pub in Cleveland that pours a perfect 20 oz. pint! Flannery''s Irish Pub features over 15 imported draft beers, 
                        traditional Irish recipes as well as great selection of American comfort foods in portions that will not leave you hungry. 
                        One bite of Cleveland''s best Fish and Chips or our signature Bacon Wrapped Meatloaf will have you hooked and craving more!'

WHERE place_id = 'ChIJP3W_O4D6MIgRYxYqWtb7meI';

UPDATE location
SET lat = 41.4985, lng = -81.690302
WHERE place_id = 'ChIJP3W_O4D6MIgRYxYqWtb7meI';

UPDATE location
SET lat = 41.4987854, lng = -81.69023749999999
WHERE place_id = 'ChIJXbkJPYD6MIgRbSBLp6BJa18';

UPDATE location
SET lat = 41.4848992, lng = -81.70368569999999
WHERE place_id = 'ChIJyZkvv23wMIgRWOFuFcRalQw';

UPDATE location
SET lat = 41.498585, lng = -81.6896055
WHERE place_id = 'ChIJEVW8R4D6MIgRW5pk_EaSj5c';

UPDATE location
SET lat = 41.4843807, lng = -81.70451869999999
WHERE place_id = 'ChIJA-V2u23wMIgRe6rtMBxi8uQ';

;