

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
`sno` int(3) NOT NULL,
`sender` text NOT NULL,
`receiver` text NOT NULL,
`balance` int(8) NOT NULL,
`datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `users` (
`id` int(3) NOT NULL,
`name` text NOT NULL,
`email` varchar(30) NOT NULL,
`balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Anisha', 'anisha@gmail.com', 90000),
(2, 'Bhargav', 'bhargav@gmail.com', 10000),
(3, 'Chetan', 'chetan@gmail.com', 80000),
(4, 'Dhanush', 'dhanush@gmail.com', 20000),
(5, 'Esther', 'esther@gmail.com', 70000),
(6, 'Fathima', 'fathima@gmail.com', 30000),
(7, 'Gurpreet', 'gurpreet@gmail.com', 60000),
(8, 'Harshal', 'harshal@gmail.com', 40000),
(9, 'Ileanaa', 'ileanaa@gmail.com', 50000),
(10, 'Jyothi', 'jyothi@gmail.com', 20000);


ALTER TABLE `transaction`
ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `users`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
