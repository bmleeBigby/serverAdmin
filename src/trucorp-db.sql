CREATE DATABASE Trucorp;

USE Trucorp;

CREATE USER 'trucorpAdmin'@'%' IDENTIFIED BY 'trucorpAdmin';

GRANT ALL PRIVILEGES ON *.* TO 'trucorpAdmin'@'%';

FLUSH PRIVILEGES;	

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nama` varchar(420) NOT NULL,
  `kantor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`nama`, `kantor`) VALUES
('Administrator', 'Pusat'),
('Bang Jago', 'Pusat'),
('Bernard Bear', 'Cabang'),
('Pink Guy', 'Cabang');
COMMIT;