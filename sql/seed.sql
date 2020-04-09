-- create table statements

create table users (
user_id serial primary key,
username varchar(100),
password varchar(100)
)

create table debts (
debt_id serial primary key,
user_id int REFERENCES users(user_id),
name varchar(80),
amount_owed dec,
minimum_payment dec,
interest_rate dec(5)
);

-- test inserts

insert into users (
username,
password
) values (
'jaocbrhyer',
'password'
);

insert into debts (
user_id,
name,
amount_owed,
minimum_payment,
interest_rate
) values (
1,
'line of credit',
388.93,
25.00,
13.24
);

insert into debts (
user_id,
name,
amount_owed,
minimum_payment,
interest_rate
) values (
1,
'DevMountain',
9818.28,
370,
8.99
);