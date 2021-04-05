ALTER TABLE user ADD COLUMN access_token  varchar(120);
CREATE TABLE techsava_school.e_learning_media(
    id              integer AUTO_INCREMENT PRIMARY KEY,
    class           varchar(120),
    file_name       varchar(120),
    file_size       varchar(120),
    file_url        varchar(120),
    file_type       varchar(50),
    session         varchar(50),
    description     text,
    uploaded_on     timestamp default current_timestamp
);