CREATE TABLE vs_test_category(
   TestCategoryId                  integer AUTO_INCREMENT PRIMARY KEY,
   CategoryName                    varchar(120),
   Description                     text,
   Active                          boolean default true

);
CREATE TABLE vs_test_group(
   TestGroupId                     integer AUTO_INCREMENT PRIMARY KEY,
   TestCategoryId                  integer REFERENCES vs_test_category(TestCategoryId),
   TestGroupName                   varchar(120),
   Description                     text,
   Active                          boolean default true

);
CREATE TABLE vs_test_levels(
   TestLeveId                      integer AUTO_INCREMENT PRIMARY KEY,
   TestGroupId                     integer REFERENCES vs_test_group(TestGroupId),
   TestLevelName                   varchar(120),
   Description                     text,
   Active                          boolean default true

);

CREATE TABLE vs_student_scoring_sheet(
    scoring_sheet                 integer AUTO_INCREMENT PRIMARY KEY,
    OOSG_CODE                     varchar(50),
    TestLeveId                    integer REFERENCES vs_test_levels(TestGroupId),
    Passed                        boolean default false,
    Description                   text,
    EnteredAt                     timestamp default current_timestamp,
    CreatedBy                     integer REFERENCES user(UserId),
    IsDeleted                     boolean default false,
    DeletedBY                     integer REFERENCES user(UserId),
    IsModified                    boolean default false,
    ModifiedBy                    integer REFERENCES user(UserId) 
);

CREATE TABLE apps(
	app_id              integer primary key,
    app_name            varchar(120),
    app_version         varchar(10),
    is_current          boolean default true
);