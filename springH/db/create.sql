#mysql数据库
create database springMVC DEFAULT CHARACTER SET utf8 ;
use springMVC;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
id BIGINT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL,
slogan VARCHAR(200),
create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
update_date TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS user_type;
CREATE TABLE user_type(
id INT PRIMARY KEY AUTO_INCREMENT,

)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS user_message;
CREATE TABLE user_message(
id BIGINT PRIMARY KEY AUTO_INCREMENT,
user_id BIGINT references table users(id),
user_type VARCHAR(20) references table user_type(id),
interest VARCHAR(20),
create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
update_date TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



