drop table if exists users      cascade;

CREATE TABLE users (
username varchar(15) NOT NULL,
password varchar NOT NULL,
salt varchar NOT NULL,
role varchar(15) NOT NULL,    -- constraint to user or admin
image varchar,
CONSTRAINT chk_role CHECK (role IN ('user','admin')),
CONSTRAINT unique_user UNIQUE (username),
CONSTRAINT pk_user_username PRIMARY KEY(username)
);

-- Password for this user is 'greatwall'
INSERT INTO users ("username", "password", "salt", "role", "image") VALUES
(
    'user',
    'FjZDm+sndmsdEDwNtfr6NA==',
    'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
    'user',
    'https://randomuser.me/api/portraits/lego/2.jpg'
);