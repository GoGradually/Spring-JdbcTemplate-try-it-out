drop table if exists post cascade;
drop table if exists comment cascade;

create table post (
                      id bigint generated by default as identity,
                      title varchar(30) not null,
                      contents varchar(255) not null,
                      primary key (id)
);

create table comment (
                         id bigint generated by default as identity,
                         post_id bigint not null,
                         contents varchar(255) not null,
                         primary key (id)
);
