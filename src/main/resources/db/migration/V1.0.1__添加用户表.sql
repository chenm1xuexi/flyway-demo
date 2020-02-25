DROP TABLE IF EXISTS t_user;

create table t_user
(
    id        bigint(13) unsigned not null auto_increment,
    username  varchar(20)         not null unique default '',
    age       int(3) unsigned     not null,
    telephone varchar(11)         not null        default '',
    address   varchar(50)         not null        default '',
    primary key (id)
) engine = InnoDB
  default charset = utf8