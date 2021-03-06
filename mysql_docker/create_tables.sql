ALTER USER 'root'@'localhost' IDENTIFIED BY 'pass';

CREATE USER 'vra'@'localhost' IDENTIFIED BY 'mdapass';
CREATE USER 'vra'@'%' IDENTIFIED BY 'mdapass';
GRANT ALL PRIVILEGES ON test_sql_database.* TO 'vra'@'localhost';
GRANT ALL PRIVILEGES ON test_sql_database.* TO 'vra'@'%';


CREATE DATABASE test_sql_database;
USE test_sql_database;

CREATE TABLE auto_types (
    i_id_car         int,
    s_model_code     varchar(25),
    s_color_code     varchar(25),
    s_extras         varchar(100),
    i_right_side     int,
    s_city_to_ship   varchar(25)
);

INSERT INTO auto_types (i_id_car, s_model_code, s_color_code, s_extras, i_right_side, s_city_to_ship) VALUES (1, "GOLF2021", "BLUE7", "COND_AIR, GPS, MULTIMEDIA_V3", 0, "Barcelona");
INSERT INTO auto_types (i_id_car, s_model_code, s_color_code, s_extras, i_right_side, s_city_to_ship) VALUES (2, "GOLF2021_PLUGIN_HYBRID", "BLUEMETAL_5", "COND_AIR, GPS, MULTIMEDIA_V3, SECURITY_V5", 1, "Cork");