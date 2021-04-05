CREATE TABLE vs_centers(
	CenterId                    integer PRIMARY KEY AUTO_INCREMENT,
    County                      VARCHAR(100),
    SubCounty                   VARCHAR(100),
    CenterName                  VARCHAR(120),
    CohortID                    integer REFERENCES vs_cohorts(CohortId),
    Efid                        integer REFERENCES user(UserId),
    LocationLong                varchar(120),
    LocationLat                 varchar(120),
    Status                      integer --1 active 0 inactive
);
CREATE TABLE vs_registrations(
    RegistrationId              integer AUTO_INCREMENT PRIMARY KEY,
	OOSG_CODE                   varchar(120) UNIQUE,
    CohortId                    integer REFERENCES vs_cohorts(CohortId),
    Efid                        integer REFERENCES user(UserId),
    CenterId                    integer REFERENCES centers,
    GirlName                    VARCHAR(120),
    Village                     varchar(120),
    Ward                        varchar(120),
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
    IsAdmitted                  boolean default false,
    IsDeleted                   boolean default false,
    DeletedBy                   integer REFERENCES user(UserId),
    CreatedBy                   integer REFERENCES user(UserId),
    CreatedAt                   timestamp default current_timestamp,
    UpdatedAt                   timestamp default current_timestamp,

);

CREATE OR REPLACE VIEW vw_registrations AS
SELECT `RegistrationId`, `OOSG_CODE`, b.`CohortId`, vs_registrations.`Efid`, a.`CenterId`, `GirlName`, `Village`, `Ward`, 
 `LanguageSpoken`, `HouseHeadName`, `HouseHeadSex`, `HouseHeadSpouseName`, `Dob`, `Gender`, `GuardianContact`, 
 `GuardianOcupation`, `IsAdmitted`,  `County`, `SubCounty`, `CenterName`, `CohortTitle`, c.`fullname` AS EfName, 
 d.fullname As CreatedByUser, `DeletedBy`, vs_registrations.`CreatedBy`, vs_registrations.`CreatedAt`,
  vs_registrations.`UpdatedAt`
FROM `vs_registrations`
INNER JOIN vs_centers a ON a.CenterId = vs_registrations.CenterId
INNER JOIN vs_cohorts b ON b.CohortId = vs_registrations.CohortId
INNER JOIN user c ON c.UserId = vs_registrations.Efid
INNER JOIN user d ON d.UserId = vs_registrations.CreatedBy
WHERE vs_registrations.isDeleted = false;

