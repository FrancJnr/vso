CREATE TABLE transition_levels(
    id             integer AUTO_INCREMENT primary key,
    name           varchar(100),
    active         boolean default true,
    details        text

);

CREATE TABLE staffPositions(
    id                integer AUTO_INCREMENT primary key,
    name              varchar(100),
    active            boolean default true,
    details           text

);

CREATE TABLE vs_staff(
    id                integer AUTO_INCREMENT primary key,
    name              varchar(120),
    position          integer references staffPositions(id),
    county_id         integer references counties(id),
    center_id         integer references vs_centers(CenterId),
    phone_number      varchar(10),
    email             varchar(100),
    dob               date,
    date_of_join      date,
    active            boolean default true,
    details           text

);

CREATE OR REPLACE VIEW vw_staffs AS SELECT vs_staff.id, vs_staff.name AS staffName, staffPositions.name AS Position, county_name, CenterName, phone_number, email, Dob, date_of_join, vs_staff.active, vs_staff.details 
FROM vs_staff 
INNER JOIN staffPositions ON staffPositions.id = vs_staff.position 
LEFT JOIN vs_centers ON vs_centers.CenterId = vs_staff.center_id 
LEFT JOIN counties ON counties.id = vs_staff.county_id 


CREATE OR REPLACE VIEW vw_users AS SELECT `UserId`, `Username`, `Password`, Position, `access_token`, `is_active`, `first_password`, `StaffId`, `fullname`, email
 FROM `user` 
 LEFT JOIN vw_staffs ON vw_staffs.id = user.StaffId

CREATE OR REPLACE VIEW vw_students AS 
SELECT a.`RegistrationId`, b.`OOSG_CODE`, b.`CohortId`, `CohortTitle`, `GirlName`, `Dob`, `Gender`, `County`, `SubCounty`, `GuardianContact`, `GuardianOcupation`, `IsAdmitted`, `CreatedByUser`, `DeletedBy`, `CreatedBy`, `CreatedAt`, `UpdatedAt`, `Disability` `HighestEducationLevel`, `LanguageSpoken`, `HouseHeadName`, `HouseHeadSex`, `HouseHeadSpouseName`, a.`CurrentStatus`, a.`comments`
 FROM `vw_registrations` b LEFT JOIN `vs_students` a ON a.RegistrationId = b.RegistrationId;

 CREATE OR REPLACE VIEW vw_attendance AS SELECT `AttendanceId`, vs_session_attendance.`OOSG_CODE`, `SessionId`, `Present`, `PresentTime`, `EndTime`, `Absent`, `AbsentReason`, `Comments`, vs_session_attendance.`CreatedBy`, vs_session_attendance.`IsDeleted`, vs_session_attendance.`DeletedBY`, `IsModified`, `ModifiedBy`, `AttendanceDate`, `DeviceId`, vw_registrations.EfName, vw_registrations.CohortId, vw_registrations.CenterName, vw_registrations.CohortTitle 
 FROM `vs_session_attendance`
  INNER JOIN vw_registrations ON vw_registrations.OOSG_CODE = vs_session_attendance.OOSG_CODE  