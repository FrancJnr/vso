INSERT INTO `techsava_school`.`modules`(`module_name`)
VALUES('Administration'), ('Attendance'), ('Reporting'), ('Staff Management'), ('Content Upload'), ('User Management');

INSERT INTO `techsava_school`.`access_roles`(`user_type_id`,`module_id`)
SELECT user_type_id, module_id
FROM techsava_school.modules, techsava_school.user_types;

ALTER TABLE access_roles DROP COLUMN can_read;
ALTER TABLE access_roles DROP COLUMN can_write;
ALTER TABLE access_roles DROP COLUMN can_delete;
CREATE TABLE user_access_roles(
    user_access_role_id          integer primary key,
    access_role_id               integer references access_roles,
    user_id                      integer references user,
    can_read                     boolean default false,
    can_write                    boolean default false,
    can_delete                   boolean default false

);CREATE TABLE user_access_roles(
    user_access_role_id          integer primary key,
    access_role_id               integer references access_roles,
    user_id                      integer references user,
    can_read                     boolean default false,
    can_write                    boolean default false,
    can_delete                   boolean default false

);
ALTER TABLE studentattendance  
ADD COLUMN adm_no                 varchar(20),
ADD COLUMN attendance_date        timestamp default current_timestamp,
ADD COLUMN attended               boolean,
ADD COLUMN device_id     	  varchar(120),
ADD COLUMN location_long     	  varchar(120),
ADD COLUMN location_lat     	  text(120),
ADD COLUMN absence_reason     	  text(120);

ALTER TABLE `techsava_school`.`studentattendance` 
CHANGE COLUMN `Date` `Date` VARCHAR(10) NULL ,
CHANGE COLUMN `Attendance` `Attendance` TEXT NULL ,
CHANGE COLUMN `DOL` `DOL` VARCHAR(10) NULL ,
CHANGE COLUMN `DOLUsername` `DOLUsername` VARCHAR(100);
