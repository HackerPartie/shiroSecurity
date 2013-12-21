# create db
# alter table simple_shiro_web_app.ROLES_PERMISSIONS drop foreign key RP_1;
# alter table simple_shiro_web_app.ROLES_PERMISSIONS drop foreign key RP_2;
# alter table simple_shiro_web_app.USERS_ROLES drop foreign key UR_1;
# alter table simple_shiro_web_app.USERS_ROLES drop foreign key UR_2;
drop table if exists permissions;
drop table if exists roles;
drop table if exists roles_permissions;
drop table if exists users;
drop table if exists user_roles;
create table permissions (name varchar(30) not null, description varchar(255), primary key (name));
create table roles (name varchar(20) not null, description varchar(255), primary key (name));
create table roles_permissions (role_name varchar(20) not null, permission_name varchar(30) not null);
create table users (username varchar(15) not null, email varchar(100), name varchar(65), password varchar(255) not null, primary key (username));
create table user_roles (username varchar(15) not null, rolename varchar(20) not null);
alter table roles_permissions add index RP_1 (rolename), add constraint RP_1 foreign key (rolename) references roles (name);
alter table roles_permissions add index RP_2 (permission_name), add constraint RP_2 foreign key (permission_name) references permissions (name);
alter table user_roles add index UR_1 (username), add constraint UR_1 foreign key (username) references users (username);
alter table user_roles add index UR_2 (rolename), add constraint UR_2 foreign key (rolename) references roles (name);

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
