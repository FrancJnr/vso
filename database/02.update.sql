CREATE TABLE techsava_school.modules(
    module_id               integer auto_increment primary key,
    module_name             varchar(100),
    created_on              timestamp default current_timestamp,
    updated_on              timestamp default current_timestamp
);

CREATE TABLE techsava_school.user_types(
    user_type_id            integer auto_increment primary key,
    user_type_name          varchar(100),
    created_on              timestamp default current_timestamp,
    updated_on              timestamp default current_timestamp
);
INSERT INTO techsava_school.user_types(user_type_name) VALUES('Staff'),('Admin'),('Student'),('root');
UPDATE techsava_school.user SET UserType = 1 WHERE StaffId is not null;
CREATE TABLE techsava_school.access_roles(
    access_role_id          integer auto_increment primary key,
    user_type_id            integer,
    module_id               integer,
    can_read                boolean default false,
    can_write               boolean default false,
    can_delete              boolean default false,
    created_on              timestamp default current_timestamp,
    updated_on              timestamp default current_timestamp,
    CONSTRAINT access_roles_user_type_id_fkey FOREIGN KEY (user_type_id)
    REFERENCES user_types (user_type_id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT access_roles_module_id_fkey FOREIGN KEY (module_id)
    REFERENCES modules (module_id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE

);

ALTER TABLE techsava_school.user ADD COLUMN is_active boolean DEFAULT true; 
ALTER TABLE techsava_school.user ADD COLUMN first_password varchar(50); 
ALTER TABLE techsava_school.user DROP COLUMN Staffid;

ALTER TABLE `techsava_school`.`user` 
CHANGE COLUMN `DOL` `DOL` VARCHAR(10) NULL ,
CHANGE COLUMN `DOLUsername` `DOLUsername` VARCHAR(100);