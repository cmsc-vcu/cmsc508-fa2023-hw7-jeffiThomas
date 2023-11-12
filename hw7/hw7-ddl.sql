# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people, skills, roles, peopleskills, peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int NOT NULL,
    skills_name varchar(256) NOT NULL,
    skills_description varchar(4096) NOT NULL,
    skills_tag varchar(4096) NOT NULL,
    skills_url varchar(256),
    skills_time_commitment varchar(4096),
    PRIMARY KEY (skills_id)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

insert into skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) 
values (1, 'Karate', 'Black Belt', "Skill 1", 'karatemaster.com', '400 hours');
insert into skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) 
values (2, 'Kung Fu', 'Master Po', "Skill 2", 'kungfupanda.com', '300 hours');
insert into skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) 
values (3, 'Muay Thai', 'Thai Top Ten', "Skill 3", 'thaitopten.com', '200 hours');
insert into skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) 
values (4, 'Taekwondo', 'Punch and Kick', "Skill 4", 'taekwondoovernight.com', '24 hours');
insert into skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) 
values (5, 'Wrestling', 'Free for all', "Skill 5", 'highschoolwrestling.com', '10 hours');
insert into skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) 
values (6, 'Fencing', 'Stick Fight', "Skill 6", 'fencingforall.com', '40 hours');
insert into skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) 
values (7, 'Ju jitsu', 'Self Defense', "Skill 7", 'saveyourself.com', '100 hours');
insert into skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) 
values (8, 'Street Fighting', 'Bare Knuckles', "Skill 8", 'freeforall.com', '50 hours');


# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int NOT NULL,
    people_first_name varchar(256),
    people_last_name varchar(256) NOT NULL,
    people_email varchar(256),
    people_linkedin_url varchar(256),
    people_headshot_url varchar(256),
    people_discord_handle  varchar(256),
    people_brief_bio varchar(4096),
    people_date_joined varchar(256) NOT NULL,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (1,'John', 'Person 1', 'JohnDoe@gmail.com', 'https://www.linkedin.com/in/JohnDoe', 
'JohnDoeheadshot.com', 'discordapp.com/users/JohnDoe', 'A fenomenal guy', 'oct 30' );

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (2,'Floyd', 'Person 2', 'Mayweather@gmail.com', 'https://www.linkedin.com/in/Floyd', 
'Mayweatherheadshot.com', 'discordapp.com/users/Floyd', 'Money', 'oct 30');

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (3,'Lee', 'Person 3', 'MasterLee@gmail.com', 'https://www.linkedin.com/in/MasterLee', 
'Leeheadshot.com', 'discordapp.com/users/Lee', 'Karate Master', 'oct 31');

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (4,'Tyson', 'Person 4', 'MikeTyson@gmail.com', 'https://www.linkedin.com/in/MikeTyson', 
'Tysonheadshot.com', 'discordapp.com/users/BigMike', 'Iron Mike', 'oct 31');

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (5,'Ali', 'Person 5', 'Ali@gmail.com', 'https://www.linkedin.com/in/MuhAli', 
'Aliheadshot.com', 'discordapp.com/users/Muhammad', 'The Greatest', 'oct 31');

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (6,'McGregor', 'Person 6', 'ConorMcGregor@gmail.com', 'https://www.linkedin.com/in/IrishMan', 
'Conorheadshot.com', 'discordapp.com/users/Conor', 'The Notorious', 'oct 31');

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (7,'Po', 'Person 7', 'DragonWarrior@gmail.com', 'https://www.linkedin.com/in/Po', 
'Pandasheadshot.com', 'discordapp.com/users/Po', 'Master Po', 'nov 2');

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (8,'Bruce', 'Person 8', 'BruceWayne@gmail.com', 'https://www.linkedin.com/in/Wayne', 
'Bruceheadshot.com', 'discordapp.com/users/Wayne', 'Batman', 'nov 2');

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (9,'Clark', 'Person 9', 'ClarkKent@gmail.com', 'https://www.linkedin.com/in/Kent', 
'Clarkheadshot.com', 'discordapp.com/users/Clark', 'Superman', 'nov 2');

insert into people (people_id, people_first_name,people_last_name, people_email,people_linkedin_url, 
people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined ) 
values (10,'Peter', 'Person 10', 'Parker@gmail.com', 'https://www.linkedin.com/in/Parker', 
'Peterheadshot.com', 'discordapp.com/users/Parker', 'Spiderman', 'nov 2');

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.


-- CREATE TABLE peopleskills (
--     peopleskills_id int NOT NULL,-- PRIMARY KEY,
--     -- peopleskills_skills_id int NOT NULL FOREIGN KEY REFERENCES skills(skills_id),
--     -- peopleskills_people_id int NOT NULL FOREIGN KEY REFERENCES people(people_id),
--     peopleskills_date_acquired varchar(256) NOT NULL
--     --PRIMARY KEY (peopleskills_id)
--     --FOREIGN KEY (peopleskills_skills_id) REFERENCES skills(skills_id),
--     --FOREIGN KEY (peopleskills_people_id) REFERENCES people(people_id)
-- );
CREATE TABLE peopleskills(
    peopleskills_id int NOT NULL PRIMARY KEY,
    peopleskills_skills_id int NOT NULL,
    FOREIGN KEY (peopleskills_skills_id) REFERENCES skills(skills_id),
    peopleskills_people_id int NOT NULL, 
    FOREIGN KEY (peopleskills_people_id) REFERENCES people(people_id),
    peopleskills_date_acquired varchar(256) NOT NULL
);


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
 
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (1, 1, 1, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (2, 3, 1,'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (3, 6, 1, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (4, 3, 2, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (5, 4, 2, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (6, 5, 2, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (7, 1, 3, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (8, 5, 3, 'oct 31');
-- -- MAYBE THIS IS WRONG IDK BUT IT WORKS
-- -- SET FOREIGN_KEY_CHECKS = 0;
-- -- insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
-- -- values (9, 1, 4, 'oct 31');
-- -- SET FOREIGN_KEY_CHECKS = 1;
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (10, 3, 5, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (11, 6, 5, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (12, 2, 6, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (13, 3, 6, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (14, 4, 6, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (15, 3, 7, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (16, 5, 7, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (17, 6, 7, 'oct 31');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (18, 1, 8, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (19, 3, 8, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (20, 5, 8, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (21, 6, 8, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (22, 2, 9, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (23, 5, 9, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (24, 6, 9, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (25, 1, 10, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (26, 4, 10, 'nov 2');
insert into peopleskills (peopleskills_id, peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired)
values (27, 5, 10, 'nov 2');

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles (
    roles_id int NOT NULL PRIMARY KEY,
    roles_name varchar(256),
    roles_sort_priority int
);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

insert into roles (roles_id, roles_name, roles_sort_priority) values (1, 'Designer', 10);
insert into roles (roles_id, roles_name, roles_sort_priority) values (2, 'Developer', 20);
insert into roles (roles_id, roles_name, roles_sort_priority) values (3, 'Recruit', 30);
insert into roles (roles_id, roles_name, roles_sort_priority) values (4, 'Team lead', 40);
insert into roles (roles_id, roles_name, roles_sort_priority) values (5, 'Boss', 50);
insert into roles (roles_id, roles_name, roles_sort_priority) values (6, 'Mentor', 60);

# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (
    peopleroles_id int NOT NULL auto_increment PRIMARY KEY,
    peopleroles_people_id int NOT NULL,
    FOREIGN KEY (peopleroles_people_id) REFERENCES people(people_id),
    peopleroles_role_id int NOT NULL,
    FOREIGN KEY (peopleroles_role_id) REFERENCES roles(roles_id),
    peopleroles_date_assigned varchar(256) NOT NULL
);

# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (1, 2, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (2, 5, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (2, 6, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (3, 2, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (3, 4, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (4, 3, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (5, 3, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (6, 2, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (6, 1, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (7, 1, 'oct 31');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (8, 1, 'nov 2');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (8, 4, 'nov 2');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (9, 2, 'nov 2');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (10, 2, 'nov 2');
insert into peopleroles(peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned)
values (10, 1, 'nov 2');