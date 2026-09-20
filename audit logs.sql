Drop Database if Exists Security_audit;
Create database Security_audit;
Use Security_audit;


CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    role VARCHAR(50) NOT NULL,
    department VARCHAR(100),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

Insert into users
(username, email, role ,Department)
Values
('admin01', 'admin01@company.com', 'Admin', 'IT'),
('john', 'john@company.com', 'Analyst', 'Security'),
('sarah', 'sarah@company.com', 'Manager', 'Finance'),
('david', 'david@company.com', 'Viewer', 'HR'),
('alice', 'alice@company.com', 'Analyst', 'Security');

Select * from users;


Create table audit_logs (
login_id bigint primary Key auto_increment,
user_id Int not null,
action varchar(50) not null,
table_name varchar(100),
record_id int,
old_value Text,
new_value text,
ip_address varchar(45),
user_agent varchar(255),
log_time Datetime Default current_timestamp,
status varchar(100) Default 'success',
foreign key (user_id)
references users(user_id)
);


insert into audit_logs
(user_id, action , table_name, record_id, old_value, new_value,Ip_address,user_agent,status)
values


(1, 'LOGIN', NULL, audit_logs,
 NULL, NULL, '192.168.1.10',
 'Chrome/Windows', 'SUCCESS'),

(2, 'UPDATE', 'employees', 101,
 'Department: Sales',
 'Department: Security',
 '192.168.1.25',
 'Chrome/Windows', 'SUCCESS'),

(3, 'LOGIN', NULL, NULL,
 NULL, NULL, '192.168.1.30',
 'Firefox/Linux', 'SUCCESS'),

(2, 'DELETE', 'employees', 105,
 'Employee: David',
 NULL,
 '192.168.1.25',
 'Chrome/Windows', 'SUCCESS'),

(4, 'LOGIN', NULL, NULL,
 NULL, NULL, '192.168.1.40',
 'Edge/Windows', 'SUCCESS');
 select * from audit_logs;
 INSERT INTO audit_logs
(user_id, action, ip_address, user_agent, status)
VALUES
(2, 'LOGIN', '45.120.20.10', 'Unknown', 'FAILED'),
(2, 'LOGIN', '45.120.20.10', 'Unknown', 'FAILED'),
(2, 'LOGIN', '45.120.20.10', 'Unknown', 'FAILED'),
(2, 'LOGIN', '45.120.20.10', 'Unknown', 'FAILED'),
(2, 'LOGIN', '45.120.20.10', 'Unknown', 'FAILED');

select * from audit_logs;
