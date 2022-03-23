CREATE DATABASE steam;

USE steam;

CREATE TABLE `games` (
  `id` int PRIMARY KEY,
  `name` varchar(200),
  `release_date` date,
  `platforms` varchar(20),
  `categories` varchar(200),
  `genres` varchar(200)
);

CREATE TABLE `games_data` (
  `id_game` int,
  `positive_ratings` mediumint,
  `negative_ratings` mediumint,
  `average_playtime` mediumint,
  `median_playtime` mediumint,
  `achievements` smallint
);

CREATE TABLE `games_income` (
  `id_game` int,
  `owners_media` int,
  `price` float
);

CREATE TABLE `support` (
  `id_game` int,
  `website` varchar(200),
  `support_url` varchar(200)
);

ALTER TABLE `games_data` ADD FOREIGN KEY (`id_game`) REFERENCES `games` (`id`);

ALTER TABLE `games_income` ADD FOREIGN KEY (`id_game`) REFERENCES `games` (`id`);

ALTER TABLE `support` ADD FOREIGN KEY (`id_game`) REFERENCES `games` (`id`);
