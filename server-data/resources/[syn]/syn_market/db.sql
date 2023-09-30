CREATE TABLE IF NOT EXISTS `market` (
  `charidentifier` int(11) NOT NULL DEFAULT 0,
  `listing` longtext DEFAULT '[]',
  `invid` int(11) DEFAULT 0,
  `invslots` int(11) DEFAULT 0,
  `location` varchar(50) DEFAULT 'Valentine',
  KEY `charid` (`charidentifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;