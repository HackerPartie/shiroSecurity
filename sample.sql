#create db
#alter table roles_permissions drop foreign key rp_1;
#alter table roles_permissions drop foreign key rp_2;
#alter table user_roles drop foreign key ur_1;
#alter table user_roles drop foreign key ur_2;
drop table if exists permissions;
drop table if exists roles;
drop table if exists roles_permissions;
drop table if exists users;
drop table if exists user_roles;

create table permissions (
    name varchar(30) not null,
    description varchar(255),
    primary key (name)
);

create table roles (
    name varchar(20) not null,
    description varchar(255),
    primary key (name)
);

create table roles_permissions (
    rolename varchar(20) not null,
    permission_name varchar(30) not null
);

create table users (
    username varchar(15) not null,
    email varchar(100),
    name varchar(65),
    password varchar(255) not null,
    primary key (username)
);

create table user_roles (
    username varchar(15) not null,
    rolename varchar(20) not null
);

alter table roles_permissions add index rp_1 (rolename),
    add constraint rp_1 foreign key (rolename) references roles (name);

alter table roles_permissions add index rp_2 (permission_name),
    add constraint rp_2 foreign key (permission_name) references permissions (name);

alter table user_roles add index ur_1 (username),
    add constraint ur_1 foreign key (username) references users (username);

alter table user_roles add index ur_2 (rolename),
    add constraint ur_2 foreign key (rolename) references roles (name);


-- # insert some sample roles:

insert into roles (name, description) values ('admin', 'Administrator');
insert into roles (name, description) values ('user', 'User');

-- insert users
-- The password values are the output of Shiro's command line hasher:
-- java -jar shiro-tools-hasher-1.2.0-cli.jar -p
-- using a plaintext password of 123qwe
# INSERT INTO users (username, name, email, password) VALUES('admin', 'Administrator', 'admin@example.com', '$shiro1$SHA-256$500000$QmLtx8PaCMe72i+yVuqH+A==$P5ohK5uWi30u38ujuTnmmeUK2gPwqhxTnke2wd9fZXw=');
# INSERT INTO users (username, name, email, password) VALUES('u1', 'User P1', 'u1@example.com', '$shiro1$SHA-256$500000$QmLtx8PaCMe72i+yVuqH+A==$P5ohK5uWi30u38ujuTnmmeUK2gPwqhxTnke2wd9fZXw=');
# INSERT INTO users (username, name, email, password) VALUES('u2', 'User P2', 'u2@example.com', '$shiro1$SHA-256$500000$QmLtx8PaCMe72i+yVuqH+A==$P5ohK5uWi30u38ujuTnmmeUK2gPwqhxTnke2wd9fZXw=');

# insert roles
# INSERT INTO roles (name, description) VALUES('ADMIN', 'Administrator role');
# INSERT INTO roles (name, description) VALUES('USER_P1', 'Perfil 1');
# INSERT INTO roles (name, description) VALUES('USER_P2', 'Perfil 2');

# insert relationships
# INSERT INTO user_roles (username, role_name) VALUES('admin', 'ADMIN');
# INSERT INTO user_roles (username, role_name) VALUES('u1', 'USER_P1');
# INSERT INTO user_roles (username, role_name) VALUES('u2', 'USER_P2');
