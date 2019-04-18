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

UPDATE location
SET location_name = 'First Energy Stadium'
WHERE location_name = 'First Energy Field';

UPDATE location
SET area = 'The Flats'
WHERE area = 'The Flatts';

UPDATE location
SET lat = 41.499274, lng = -81.69012599999999
WHERE location_name = 'Hilarities';

UPDATE location
SET lat = 41.5028937, lng = -81.6811175
WHERE location_name = 'Hofbräuhaus Cleveland';

UPDATE location
SET lat = 41.4990104, lng = -81.69086089999999
WHERE location_name = 'House of Blues Cleveland';

UPDATE location 
SET location_name = 'Rocket Mortgage Field House'
WHERE location_name = 'Rocket Morgage Field House';

UPDATE location
SET lat = 41.4963298, lng = -81.70292049999999
WHERE location_name = 'Jacobs Pavilion at Nautica';

UPDATE location
SET lat = 41.49653929999999, lng = -81.7038046
WHERE location_name = 'Greater Cleveland Aquarium';

UPDATE location
SET lat = 41.4982619, lng = -81.7064228
WHERE location_name = 'Music Box Supper Club';

UPDATE location
SET lat = 41.5013048, lng = -81.68079469999999
WHERE location_name = 'Playhouse Square';

UPDATE location
SET lat = 41.5038647, lng = -81.6536524
WHERE location_name = 'Agora Theater & Ballroom';

UPDATE location
SET lat = 41.4985688, lng = -81.6930995
WHERE location_name = 'JACK Cleveland Casino';

UPDATE location
SET lat = 41.5063477, lng = -81.60933609999999
WHERE location_name = 'Severance Hall';

UPDATE location
SET lat = 41.510065, lng = -81.691557
WHERE location_name = 'USS Cod Submarine Memorial';

UPDATE location
SET lat = 41.4794648, lng = -81.6842722
WHERE location_name = 'The Flying Monkey Pub';

UPDATE location
SET lat = 41.4785281, lng = -81.6903112
WHERE location_name = 'Lincoln Park';

UPDATE location
SET lat = 41.4731669, lng = -81.6863652
WHERE location_name = 'Tremont Park';

UPDATE location
SET location_name ='Tremont Park Ohio'
WHERE location_name = 'Tremont Park';

UPDATE location
SET location_name = 'Lincoln Park Tremont'
WHERE location_name = 'Lincoln Park';

UPDATE location
SET lat = 41.4771844, lng = -81.6953077
WHERE location_name = 'Tremont Taphouse';

UPDATE location
SET lat = 41.4833813, lng = -81.7002633
WHERE location_name = 'Forest City Brewery';

UPDATE location
SET lat = 41.485995, lng = -81.70514419999999
WHERE location_name = 'Ohio City Burrito';

UPDATE location
SET lat = 41.48544750000001, lng = -81.7040138
WHERE location_name = 'TownHall';

UPDATE location
SET location_name = 'Ohio City TownHall'
WHERE location_name = 'TownHall';

UPDATE location
SET lat = 41.4846863, lng = -81.70306189999999
WHERE location_name = 'West Side Market';

UPDATE location
SET lat = 41.5001277, lng = -81.6904967
WHERE location_name = 'The Arcade Cleveland';

UPDATE location
SET lat = 41.5102138, lng = -81.69547519999999
WHERE location_name = 'GOODTIME III';

UPDATE location
SET lat = 41.5092527, lng = -81.69804499999999
WHERE location_name = 'Steamship William G. Mather Museum';

UPDATE location
SET lat = 41.5016942, lng = -81.6929502
WHERE location_name = 'Fountain Of Eternal Life';

UPDATE location
SET lat = 41.497226, lng = -81.69404900000001
WHERE location_name = 'Tower City Center';

UPDATE location
SET lat = 41.4989235, lng = -81.69023179999999
WHERE location_name = 'Mabel''s BBQ';

UPDATE location
SET lat = 41.49914649999999, lng = -81.6900132
WHERE location_name = 'Butcher and the Brewer';

UPDATE location
SET lat = 41.498995, lng = -81.69023199999999
WHERE location_name = 'Wonder Bar';

UPDATE location
SET location_name = 'Wonder Bar Cleveland'
WHERE location_name = 'Wonder Bar';

UPDATE location
SET lat = 41.4823982, lng = -81.6890059
WHERE location_name = 'Parallax';

UPDATE location
SET location_name = 'Parallax Cleveland'
WHERE location_name = 'Parallax';

UPDATE location
SET lat = 41.4995335, lng = -81.6929348
WHERE location_name = 'Soldiers and Sailors Monument';

UPDATE location
SET location_name = 'Cleveland Soldiers and Sailors Monument'
WHERE location_name = 'Soldiers and Sailors Monument';

UPDATE location
SET lat = 41.479836, lng = -81.71396829999999
WHERE location_name = 'Platform Beer Co.';

UPDATE location
SET description = 'Progressive Field is a baseball park located in the downtown area of Cleveland, Ohio, United States. 
                        It is the home field of the Cleveland Indians of Major League Baseball and, together with Rocket Mortgage Field House, 
                        is part of the Gateway Sports and Entertainment Complex.'
WHERE description = 'Progressive Field is a baseball park located in the downtown area of Cleveland, Ohio, United States. 
                        It is the home field of the Cleveland Indians of Major League Baseball and, together with Rocket Morgage Field House, 
                        is part of the Gateway Sports and Entertainment Complex.'; 

UPDATE location
SET description = 'Jacobs Pavilion is an open-air amphitheater located on the west bank of The Flats in Cleveland, Ohio. 
                        The venue is part of the Nautica Entertainment Complex, owned by Jacobs Entertainment.' 
WHERE location_name = 'Jacobs Pavilion at Nautica';

UPDATE location
SET description = 'The Agora Theatre and Ballroom is a music venue located in Cleveland, Ohio, founded by Henry "Hank" LoConti Sr. The Agora name was previously used by two other Cleveland venues in succession, the latter of which was damaged by fire in 1984.'
WHERE location_name =  'Agora Theater & Ballroom';    

UPDATE location
SET area = 'Midtown'
WHERE location_name = 'Agora Theater & Ballroom';

UPDATE location
SET description = 'The Cuyahoga County Soldiers and Sailors'' Monument is a monument to Civil War soldiers and sailors from Cuyahoga County, Ohio. Located in the southeast quadrant of Public Square in downtown Cleveland, it opened July 4, 1894. It was designed by architect Levi Scofield, who also created the monument''s sculptures.'
WHERE location_name = 'Cleveland Soldiers and Sailors Monument';

UPDATE location
SET description = 'Tour this restored 618-foot historic ship and see what life was like on board a working Great Lakes freighter. Explore the 1925-built Mather from stem to stern and see its huge cargo holds, brass and oak pilot house, elegant guest quarters and four-story engine room. Walk the decks and marvel at the “engineering firsts” 
                        that helped transform Northeast Ohio into a great industrial center. Experience the golden era of steamships on one of the best.'  
WHERE location_name = 'Steamship William G. Mather Museum';

UPDATE location
SET description = 'The West Side Market is the oldest operating indoor/outdoor market space in Cleveland, Ohio. It is located at the corner of West 25th Street and Lorain Avenue in the Ohio City neighborhood. 
                        On December 18, 1973, it was added to the National Register of Historic Places.'
WHERE location_name = 'West Side Market';

INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('Soupermarket Cleveland', 'Midtown', 'Bar/Rest', 'ChIJDXb39KX7MIgRtzc5WsfkSeU', 41.50026037010727, -81.63788077989273, 'Home of Cleveland''s finest hand-crafted soups, stocks, adn broths.');
   
UPDATE location
SET location_name = 'SouperMarket Cleveland'   
WHERE location_name = 'Soupermarket Cleveland';     

INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('Gust Gallucci''s Italian Foods & Market', 'Midtown', 'Bar/Rest', 'ChIJnxQ6q637MIgRUwr6C6FZzKg', 41.5037733, -81.64393299999999, 'Cleveland''s source for Italian meats and cheeses, pasta, olives and olive oil, spices, fine wines and other ethnic foods.');
INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('The Cleveland Bagel Company', 'Midtown', 'Bar/Rest', 'ChIJ73I510PwMIgR0mBi7EbVyk0', 41.501713, -81.635416, 'Hand-rolled bagels are served with a variety of inventive cream cheese in casual, modern surrounds.');

UPDATE location
SET description = 'House of Blues IS the ultimate night out. It''s where great food sets the stage for amazing live concerts. From VIP experiences with the 
                        world''s best artists to our world-famous Gospel Brunch on Sundays, House of Blues is truly where music and food feed the soul.'
WHERE location_name = 'House of Blues Cleveland';

UPDATE location
SET description = 'USS Cod is a Gato-class submarine, the only vessel of the United States Navy to be named for the cod, named after the world''s 
                        most important food fish of the North Atlantic and North Pacific. Her keel was laid down by the Electric Boat Company of 
                        Groton, Connecticut on 21 July 1942.'
WHERE location_name = 'USS Cod Submarine Memorial';                        

UPDATE location 
SET description = 'Home of Cleveland''s finest hand-crafted soups, stocks, and broths.'
WHERE description = 'Home of Cleveland''s finest hand-crafted soups, stocks, adn broths.';

INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('Tech Elevator', 'Midtown', 'Landmark', 'ChIJU4WNAq_7MIgRuEgwoiQh2Mk', 41.5038148, -81.6386917, 'Tech Elevator is an intensive in-person education provider helping individuals and companies acquire in-demand technology skills for the modern workforce.
                        Through our 14-week, full-time coding bootcamps, we teach students from diverse backgrounds to become software developers 
                        while also helping them to build necessary career-readiness skills and career connections through our nationally 
                        recognized Pathway Program™.');

INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('Euclid Beach Cleveland Script Sign', 'Waterloo Arts District', 'Landmark', 'ChIJxTs7BbnxMIgRDaAq0S0A6FU',41.5838318 ,-81.5688907 , 'The fourth Cleveland script sign is the farthest east 
                        and offers a west-facing view of the city skyline. Located in Euclid Beach Park, the sign offers both a picturesque look at 
                        Lake Erie and Euclid Beach. With clear blue skies, mid-morning and early afternoon photos will be the hit of your Instagram feed. 
                        But, a group photo before an evening of fun at Euclid Beach LIVE works just as well.');
                         
INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('Tremont Cleveland Script Sign', 'Tremont', 'Landmark', 'ChIJgTYBxnXwMIgRZjditvKIIEA', 41.4845855, -81.6930842, 'The Tremont neighborhood sign 
                        features a backdrop of the majestic Innerbelt and Shoreway bridges, as well as a wide view of the tallest structures in the city 
                        like Terminal Tower and Key Tower. At night, some visitors like to add some bang to their shots by taking photos when the 
                        Indians have a fireworks show at Progressive Field. Spend a day (or night) in Tremont, which boasts an even mix of indie art 
                        galleries, cool boutiques and amazing culinary experiences.');
                        
INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('Edgewater Park Cleveland Script Sign', 'Edgewater', 'Landmark', 'ChIJxTs7BbnxMIgRDaAq0S0A6FU', 41.4875324, -81.7492465, 'The script sign at Edgewater Park 
                        welcomes its visitors before they even make their way down to the beach area. Depending on the season, there are usually a lot 
                        of things happening at the park - from the popular Edgewater LIVE series to the Light Up the Lake fireworks show. This spot is 
                        popular for early sunrise photos, and great for anyone who wants a picture that combines the city and Lake Erie.');
                        
INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('North Coast Harbor Cleveland Script Sign', 'Downtown', 'Landmark', 'ChIJlZ6RsITwMIgR7lPkPFMVvSo', 41.5099419, -81.69685319999999, 'The third of the original 
                        signs finds itself behind the Rock & Roll Hall of Fame and within close proximity to the Great Lakes Science Center and the 
                        Goodtime III. The Rock Hall, Terminal Tower and the new Hilton Downtown Cleveland make a perfect backdrop during a sunset photo at 
                        the script sign. It offers a glittering, south-facing cityscape shot.');

INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('The Foundry Cleveland Sign', 'The Flats', 'Landmark', 'ChIJNa8_aXDwMIgRsDgqC1H0wks', 41.4895647, -81.70033029999999, 'The sixth script sign, which was installed 
                        in August of 2018, is located at the uber-unique location of The Foundry, located on the Flats West Bank. This location offers an 
                        incredibly special cityscape view from the Cuyahoga River. If you''re lucky, you might just capture a huge Lake Erie freighter in 
                        the background. Better still, make a stop inside The Foundry, a rowing and sailing center, to take fitness classes and lessons.');

INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('Edgewater Park', 'Edgewater', 'Park', 'ChIJpyxLMLPxMIgRQbsFyGITT6M', 41.4902896, -81.73545519999999, 'The 147
                         acre Edgewater Park is the westernmost park in Cleveland Metroparks Lakefront Reservation. Edgewater Park features 9000 feet of 
                         shoreline, dog and swim beaches, boat ramps, fishing pier, picnic areas and grills and a rentable pavilion.');                                                                                            

INSERT INTO location (location_name, area, category, place_id, lat, lng, description) VALUES ('Cleveland Masonic', 'Midtown', 'Entertainment', 'ChIJFYYI6lv6MIgRSSlAE6mYkjE', 41.50406599999999, -81.66241900000001, 'The Masonic 
                        Temple Auditorium was completed in 1921 and originally housed the Cleveland Orchestra for many years. Due to its renowned acoustics
                        the venue has been home to various performing arts productions and live music events over the years. More recently a variety of 
                        national touring acts, comedians and rising stars have performed such as MGMT, Bastille, Fitz and the Tantrums, The 1975, Pixies, 
                        Kirk Franklin, Joe Rogan, Ghost, Leon Bridges and Sturgill Simpson.');  

UPDATE location
SET description = 'The Arcade in downtown Cleveland, Ohio, is a Victorian-era structure of two nine-story buildings, joined by a five-story arcade with a 
                        glass skylight spanning over 300 feet, along the four balconies.'
WHERE location_name = 'The Arcade Cleveland';

UPDATE location
SET description = 'The Fountain of Eternal Life, also known as the War Memorial Fountain and Peace Arising from the Flames of War, is a 
                        statue and fountain in downtown Cleveland, Ohio designed by Cleveland Institute of Art graduate Marshall Fredericks and 
                        dedicated on May 30, 1964.'
WHERE location_name = 'Fountain Of Eternal Life';   

UPDATE location
SET description = 'Two Irish brothers with limited brewing experience. A city that shuttered its last production brewery in the early 80s.
                        A neighborhood in serious need of a facelift. In 1986 when Patrick and Daniel Conway opened their fledgling operation in Cleveland''s 
                        Ohio City neighborhood, the odds were stacked against them. Fortunately, they surrounded themselves with a staff of passionate, 
                        knowledgeable people, and from the start committed themselves to bringing a sophisticated, diverse selection of craft beer to their 
                        home state. Two decades, multiple awards, and a whole lot of stories later, Pat and Dan Conway celebrate over two decades of 
                        brewing exceptional beer for their adventurous and discerning customers.'
WHERE location_name = 'Great Lakes Brewing Company';

UPDATE location
SET description = 'Lola is the crown jewel of Cleveland''s vibrant culinary scene. Chef Michael Symon''s inventive and creative menu offers diners the 
                        opportunity to experience a modern spin on their favorite dishes, while always showcasing the best of what local purveyors are 
                        producing just miles away. The sleek and elegant space is the perfect backdrop to your culinary adventure of award-winning cuisine.'
WHERE location_name = 'Lola Bistro';  

UPDATE location
SET description = 'Playhouse Square is a theater district in downtown Cleveland, Ohio, USA. It is the largest performing arts center in the United States 
                        outside of New York. Constructed in a span of 19 months in the early 1920s, the theaters were subsequently closed down, but were 
                        revived through a grassroots effort.'
WHERE location_name = 'Playhouse Square';

UPDATE location
SET description = 'German microbrewery with an on-site restaurant & beer garden offering traditional eats & live music.'
WHERE location_name = 'Hofbräuhaus Cleveland';

UPDATE location
SET description = 'Tower City Center, originally known as Cleveland Union Terminal, is a large mixed-use facility located on Public Square in 
                        downtown Cleveland, Ohio.'
WHERE location_name = 'Tower City Center';

UPDATE location
SET description = 'Hilarities Comedy Hall, which opened in 1986, has been credited with pioneering the revival of Cleveland’s Warehouse District. 
                        Hilarities was a downtown destination for Clevelanders for nearly twelve years, drawing nearly 130,000 visitors annually, a number 
                        which exceeded that of even the Cleveland Ballet. Over the course of history, Hilarities succeeded in bringing attention not 
                        only to itself but to its neighborhood and the city of Cleveland. Hilarities served up a host of now nationally prominent talent 
                        such as Tim Allen, Paul Reiser, Sinbad, Kevin Pollak and Louie Anderson to name a few, as well as having spawned from its amateur 
                        ranks Clevelanders who have gone on to national prominence.'
WHERE location_name = 'Hilarities';

UPDATE location
SET description = 'Severance Hall is a concert hall located in the University Circle neighborhood of Cleveland, Ohio. Named after patrons John L. and 
                        his sister Elisabeth Severance Allen Prentiss, the hall has been the home of the Cleveland Orchestra since its opening on February 
                        5, 1931.'
WHERE location_name = 'Severance Hall';

UPDATE location
SET description = 'The Greater Cleveland Aquarium is an aquarium in Cleveland, Ohio, USA. Occupying the historic FirstEnergy Powerhouse building located 
                        on the west bank of the Cuyahoga River in the city''s Flats district, the aquarium which opened in January 2012 consists of 
                        approximately 70,000 square feet of exhibition space and features exhibits representing both local and exotic species 
                        of fish. The facility is the only free standing aquarium in the state of Ohio and ends a 26-year period that the city lacked a 
                        public aquarium.'
WHERE location_name = 'Greater Cleveland Aquarium';

UPDATE location
SET description = 'Jack Cleveland Casino is a casino in downtown Cleveland, Ohio, owned and operated by Jack Entertainment.'
WHERE location_name = 'JACK Cleveland Casino';
                                                                  