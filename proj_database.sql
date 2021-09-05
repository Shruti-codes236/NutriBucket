show databases;
create database Recipe_site;
use Recipe_site;

create table Users
( usr_name varchar(255) not null,
usr_id varchar(255) not null,
usr_pswd varchar(255) not null,
usr_level varchar(255) not null,
primary key (usr_id)
);
select * from users;

create table Recipes
( Recipe_id int not null auto_increment, 
Recipe_Name varchar(255) not null,
Recipe_description varchar(255),
Recipe_Type varchar(255) not null, /*veg, non-veg, egg, vegan*/
Recipe_Category varchar(255) not null,
primary key (Recipe_id)
);

create table upload_details
( usr_id varchar(255),
usr_name varchar(255),
date_uploaded datetime,
foreign key (usr_id) references users (usr_id)
);

alter table upload_details
add recipe_id int;
select * from upload_details;


create table user_details
( usr_id varchar(255),
height_cm int,
weight_kg int,
foreign key (usr_id) references users (usr_id)
);
select * from user_details;

create table recipe_prep_details
(preparation_time time,
num_of_servings int,
ingredients varchar(255),
instructions varchar(255),
foreign key (recipe_id) references recipes(recipe_id)
);

alter table recipe_prep_details
add recipe_id int;
alter table recipe_prep_details
add constraint foreign key (recipe_id) references recipes (recipe_id);
 
select * from recipe_prep_details;

create table nutri_content         
( calories_per_serving decimal,
carbs decimal,
proteins decimal,
saturated_fats decimal,
trans_fats decimal,
cholestrol decimal
);
alter table nutri_content
add recipe_id int;
alter table nutri_content
add foreign key (recipe_id) references recipes (recipe_id);

select * from nutri_content;

show tables;
select * from Recipes;






