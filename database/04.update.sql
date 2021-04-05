CREATE TABLE vs_registrations(
    RegistrationId              integer AUTO_INCREMENT PRIMARY KEY,
	OOSG_CODE                   varchar(120) UNIQUE,
    CohortId                    integer REFERENCES vs_cohorts(CohortId),
    EflId                       integer REFERENCES user(UserId),
    GirlName                    VARCHAR(120),
    Village                     varchar(120),
    Ward                        varchar(120),
    CenterName                  varchar(120),
    Surname                     varchar(120),
    FirstName                   varchar(120),
    OtherNames                  varchar(120),
    LanguageSpoken              varchar(120),
    HouseHeadName               varchar(120),
    HouseHeadSex                varchar(10),
    HouseHeadSpouseName         varchar(120),
    Dob                         date,
    Gender                      CHARACTER,
    GuardianContact             varchar(120),
    GuardianOcupation           varchar(120),
    IsAdmitted                  boolean default false
);
CREATE TABLE vs_cohorts(
    CohortId                    integer AUTO_INCREMENT PRIMARY KEY,
    CohortTitle                 varchar(120),
    StartDate                   date,
    EndDate                     date,
    CohortYear                  integer,
    IsActive                    integer default 1,
    Description                 text,
    CreatedBy                   varchar(120)             
);
CREATE TABLE vs_students(
	OOSG_CODE                   varchar(120) PRIMARY key,
    RegistrationId              integer REFERENCES vs_registrations(RegistrationId),
    CohortId                    integer REFERENCES vs_cohorts(CohortId),
    CurrentStatus               varchar(50),
    AdmissionDate               date default current_date,
    AdmittedBy                  integer REFERENCES user(UserId),
    comments                    text
);
CREATE INDEX vs_students_RegistrationId ON vs_students(RegistrationId);

CREATE TABLE vs_curriculumn_content(
    ContentId                   integer AUTO_INCREMENT PRIMARY KEY,
    CohortId                    integer REFERENCES vs_cohorts(CohortId),
    Description                 text,
    FileLink                    varchar(120),
    CreatedBy                   integer REFERENCES user(UserId),
    IsDeleted                   boolean default false,
    DeletedBY                   integer REFERENCES user(UserId),
    IsModified                  boolean default false,
    ModifiedBy                  integer REFERENCES user(UserId) 
);

CREATE TABLE vs_sessions(
    SessionId                   varchar(120),
    CohortId                    integer REFERENCES vs_cohorts(CohortId),
    EflId                       integer REFERENCES user(UserId),
    SessionDate                 Date default current_date,
    StartTime                   Time,
    EndTime                     Time,
    CenterName                  varchar(120),
    CenterLat                   varchar(120),
    CenterLong                  varchar(120),
    SessionActive               boolean default false,
    Description                 text,
    CreatedBy                   integer REFERENCES user(UserId),
    IsDeleted                   boolean default false,
    DeletedBY                   integer REFERENCES user(UserId),
    IsModified                  boolean default false,
    ModifiedBy                  integer REFERENCES user(UserId) 
);
CREATE TABLE vs_session_attendance(
    AttendanceId                integer AUTO_INCREMENT PRIMARY KEY,
    OOSG_CODE                   varchar(120) REFERENCES vs_students(OOSG_CODE),
    SessionId                   varchar(120) REFERENCES vs_sessions(SessionId),
    AttendanceDate              date,
    DeviceId                    varchar(120),
    Present                     boolean default false,
    PresentTime                 Time,
    EndTime                     Time,
    Absent                      boolean default false,
    AbsentReason                text,
    Comments                    text,
    CreatedBy                   integer REFERENCES user(UserId),
    IsDeleted                   boolean default false,
    DeletedBY                   integer REFERENCES user(UserId),
    IsModified                  boolean default false,
    ModifiedBy                  integer REFERENCES user(UserId) 
);





        
    