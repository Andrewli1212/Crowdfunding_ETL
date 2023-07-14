drop table campaign;
drop table category;
drop table subcategory;
drop table contacts;

CREATE TABLE category (
    category_id varchar(10) PRIMARY KEY NOT NULL,
    category varchar(30)   NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id varchar(10) PRIMARY KEY NOT NULL,
    subcategory varchar(30) NOT NULL
);

CREATE TABLE contacts (
    contact_id int PRIMARY KEY NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    email varchar(100) NOT NULL
);

CREATE TABLE campaign (
    cf_id int,
    contact_id int NOT NULL,
    company_name varchar(100) NOT NULL,
    description varchar(500) NOT NULL,
    goal decimal NOT NULL,
    pledged decimal NOT NULL,
    outcome varchar(30) NOT NULL,
    backers_count int NOT NULL,
    country varchar(30) NOT NULL,
    currency varchar(5) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(10) NOT NULL,
    subcategory_id varchar(10) NOT NULL,
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id),
	primary key(cf_id)
);

