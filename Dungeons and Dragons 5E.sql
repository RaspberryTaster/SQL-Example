Create Database Dungeons_And_Dragons_5E;
Use Dungeons_And_Dragons_5E;
create table classes(
	id int not null auto_increment,
    name varchar(255) Not Null,
    Hit_Die int Not Null,
    Primary_Ability varchar(255) Not Null,
    Saves varchar(255) Not Null,
    Primary Key (id)
);

create table subclasses(
	id int not null auto_increment,
    name varchar(255) Not Null,
    class_id int Not null,
    primary key (id),
    foreign key (class_id) references classes(id)  
);

Insert Into classes (name, Hit_Die, Primary_Ability, Saves)
Values('Barbarian', 12, 'Stregth', 'Strength & Constitution');

Insert Into classes (name, Hit_Die, Primary_Ability, Saves)
Values('Fighter', 10, 'Stregth or Dexterity', 'Strength & Constitution');

Select * From classes;

Select * From classes Limit 1;

select Hit_Die from classes;

select name as 'Name' from classes;

select * from classes order by Hit_Die;

DELETE FROM classes WHERE id = 3;

Insert into subclasses (name, class_Id)
Values ('Eldritch Knight', 2), ('Champion', 2), ('Gunslinger', 2);

DELETE FROM subclasses WHERE class_id = 2;
DELETE FROM subclasses WHERE id = 5;
DELETE FROM subclasses WHERE id = 1;

select * from subclasses;

select * from classes
join subclasses on classes.id = subclasses.class_id;

Select class_id, count(class_id) from subclasses
group by class_id;

