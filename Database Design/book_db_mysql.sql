
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `book`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `last_name` varchar(100) DEFAULT NULL COMMENT 'Фамилия',
  `first_name` varchar(100) DEFAULT NULL COMMENT 'Имя',
  `middle_name` varchar(100) DEFAULT NULL COMMENT 'Отчество',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Автор, переводчик';

-- --------------------------------------------------------

--
-- Структура таблицы `author_role`
--

CREATE TABLE `author_role` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `author_role_name` varchar(50) DEFAULT NULL COMMENT 'Наименование роли'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Роль автора (автор, переводчик)';

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `isbn` varchar(30) NOT NULL COMMENT 'ISBN',
  `book_name` varchar(4000) DEFAULT NULL COMMENT 'Название книги',
  `udk` varchar(30) DEFAULT NULL COMMENT 'УДК',
  `bbk` varchar(30) DEFAULT NULL COMMENT 'ББК',
  `publish_year` decimal(10,0) DEFAULT NULL COMMENT 'Год публикации',
  `pages_count` decimal(10,0) DEFAULT NULL COMMENT 'Количество страниу',
  `circulation` decimal(10,0) DEFAULT NULL COMMENT 'Тираж',
  `annotation` mediumtext COMMENT 'Аннотация',
  `reader_type_id` decimal(10,0) NOT NULL COMMENT 'ИД категории читателей',
  `book_format_id` decimal(10,0) NOT NULL COMMENT 'ИД формата',
  `pictures` decimal(10,0) DEFAULT NULL COMMENT 'Наличие иллюстраций',
  `signed` date DEFAULT NULL COMMENT 'Подписано в печать',
  `sheetes` decimal(10,0) DEFAULT NULL COMMENT 'Количество страниц',
  `order_num` varchar(50) DEFAULT NULL COMMENT 'Номер заказа',
  `cover_type_id` decimal(10,0) NOT NULL COMMENT 'ИД типа обложки',
  `book_type_id` decimal(10,0) NOT NULL COMMENT 'ИД типа издания',
  `comments` varchar(4000) DEFAULT NULL COMMENT 'Комментарии',
  `cover_file_name` varchar(500) DEFAULT NULL COMMENT 'Имя файла-обложки',
  `language_id` decimal(10,0) NOT NULL COMMENT 'ИД языка издания'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Издание';

-- --------------------------------------------------------

--
-- Структура таблицы `book_book_group`
--

CREATE TABLE `book_book_group` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `book_id` decimal(10,0) NOT NULL COMMENT 'ИД издания',
  `book_group_id` decimal(10,0) NOT NULL COMMENT 'ИД группы изданий'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Издание в группе';

-- --------------------------------------------------------

--
-- Структура таблицы `book_content`
--

CREATE TABLE `book_content` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `book_id` decimal(10,0) NOT NULL COMMENT 'ИД издания',
  `novel_version_id` decimal(10,0) NOT NULL COMMENT 'ИД версии произведения',
  `num` decimal(10,0) DEFAULT NULL COMMENT 'Номер п/п'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Содержание книги';

-- --------------------------------------------------------

--
-- Структура таблицы `book_format`
--

CREATE TABLE `book_format` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `book_format_group_id` decimal(10,0) NOT NULL COMMENT 'ИД группы форматов',
  `sheet_length` decimal(10,0) DEFAULT NULL COMMENT 'Длина листа',
  `sheet_width` decimal(10,0) DEFAULT NULL COMMENT 'Ширина листа',
  `part_sheet` decimal(10,0) DEFAULT NULL COMMENT 'Доля листа'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Формат издания';

-- --------------------------------------------------------

--
-- Структура таблицы `book_format_group`
--

CREATE TABLE `book_format_group` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `group_name` varchar(50) DEFAULT NULL COMMENT 'Наименование группы'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Группа форматов';

-- --------------------------------------------------------

--
-- Структура таблицы `book_group`
--

CREATE TABLE `book_group` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `group_name` varchar(200) NOT NULL COMMENT 'Наименование группы',
  `book_group_type_id` decimal(10,0) NOT NULL COMMENT 'ИД типа группы'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Группа издваний';

-- --------------------------------------------------------

--
-- Структура таблицы `book_group_type`
--

CREATE TABLE `book_group_type` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `book_group_type_name` varchar(50) DEFAULT NULL COMMENT 'Наименование типа группы изданий'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Тип группы изданий';

-- --------------------------------------------------------

--
-- Структура таблицы `book_paper`
--

CREATE TABLE `book_paper` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `book_id` decimal(10,0) NOT NULL COMMENT 'ИД издания',
  `paper_id` decimal(10,0) NOT NULL COMMENT 'ИД типа бумаги'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Типы бумаги изданий';

-- --------------------------------------------------------

--
-- Структура таблицы `book_print_type`
--

CREATE TABLE `book_print_type` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `book_id` decimal(10,0) NOT NULL COMMENT 'ИД издания',
  `print_type_id` decimal(10,0) NOT NULL COMMENT 'ИД типа печати'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `book_type`
--

CREATE TABLE `book_type` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `book_type_name` varchar(50) DEFAULT NULL COMMENT 'Наименование типа издвания'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cover_type`
--

CREATE TABLE `cover_type` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `cover_name` varchar(50) DEFAULT NULL COMMENT 'Наименование типа обложки'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `genre_name` varchar(100) DEFAULT NULL COMMENT 'Наименование жанра'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Жанр произведение';

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE `language` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `language_name` varchar(50) DEFAULT NULL COMMENT 'Наименование языка'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Язык';

-- --------------------------------------------------------

--
-- Структура таблицы `novel`
--

CREATE TABLE `novel` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `novel_name` varchar(1000) DEFAULT NULL COMMENT 'Наименование произведения',
  `novel_year` decimal(10,0) DEFAULT NULL COMMENT 'Год выхода произведения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Произведение';

-- --------------------------------------------------------

--
-- Структура таблицы `novel_author`
--

CREATE TABLE `novel_author` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `novel_id` decimal(10,0) NOT NULL COMMENT 'ИД произведения',
  `author_id` decimal(10,0) NOT NULL COMMENT 'ИД автора'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Авторы (переводчики) произведений';

-- --------------------------------------------------------

--
-- Структура таблицы `novel_genre`
--

CREATE TABLE `novel_genre` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `genre_id` decimal(10,0) NOT NULL COMMENT 'ИД жанра',
  `novel_id` decimal(10,0) NOT NULL COMMENT 'ИД произведения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `novel_version`
--

CREATE TABLE `novel_version` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `novel_id` decimal(10,0) NOT NULL COMMENT 'ИД произведения',
  `novel_version_name` varchar(500) DEFAULT NULL COMMENT 'Наименование версии',
  `novel_version_type_id` decimal(10,0) NOT NULL COMMENT 'ИД типа версии'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Версия произведения';

-- --------------------------------------------------------

--
-- Структура таблицы `novel_version_author`
--

CREATE TABLE `novel_version_author` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `author_id` decimal(10,0) NOT NULL COMMENT 'ИД автора',
  `novel_version_id` decimal(10,0) NOT NULL COMMENT 'ИД версии',
  `author_role_id` decimal(10,0) NOT NULL COMMENT 'ИД роли автора'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Авторы версии произведения';

-- --------------------------------------------------------

--
-- Структура таблицы `novel_version_language`
--

CREATE TABLE `novel_version_language` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `novel_version_id` decimal(10,0) NOT NULL COMMENT 'ИД версии произведения',
  `language_id` decimal(10,0) NOT NULL COMMENT 'ИД языка'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Языки произведений';

-- --------------------------------------------------------

--
-- Структура таблицы `novel_version_type`
--

CREATE TABLE `novel_version_type` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `novel_version_type_name` varchar(50) DEFAULT NULL COMMENT 'Наименование типа'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Тип версии произведения';

-- --------------------------------------------------------

--
-- Структура таблицы `paper_type`
--

CREATE TABLE `paper_type` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `paper_name` varchar(100) DEFAULT NULL COMMENT 'Наименование типа'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Тип бумаги';

-- --------------------------------------------------------

--
-- Структура таблицы `print_type`
--

CREATE TABLE `print_type` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `type_name` varchar(50) DEFAULT NULL COMMENT 'Наименование типа'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Тип печати';

-- --------------------------------------------------------

--
-- Структура таблицы `publish_group`
--

CREATE TABLE `publish_group` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `book_id` decimal(10,0) NOT NULL COMMENT 'ИД издания',
  `last_name` varchar(100) DEFAULT NULL COMMENT 'Фамилия',
  `first_name` varchar(100) DEFAULT NULL COMMENT 'Имя',
  `middle_name` varchar(100) DEFAULT NULL COMMENT 'Отчество',
  `publish_group_role_id` decimal(10,0) NOT NULL COMMENT 'ИД роли'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Издательская группа';

-- --------------------------------------------------------

--
-- Структура таблицы `publish_group_role`
--

CREATE TABLE `publish_group_role` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Наименование роли'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Роль члена издательской группы';

-- --------------------------------------------------------

--
-- Структура таблицы `publish_house`
--

CREATE TABLE `publish_house` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `publish_house_name` varchar(1000) DEFAULT NULL COMMENT 'Наименование организации',
  `publish_house_name_short` varchar(100) DEFAULT NULL COMMENT 'Сокращенное наименование организации',
  `address` varchar(1000) DEFAULT NULL COMMENT 'Адрес',
  `email` varchar(100) DEFAULT NULL COMMENT 'Email',
  `phone` varchar(30) DEFAULT NULL COMMENT 'Телефон',
  `url` varchar(500) DEFAULT NULL COMMENT 'URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Издательство, типография и др. организации';

-- --------------------------------------------------------

--
-- Структура таблицы `publish_house_book`
--

CREATE TABLE `publish_house_book` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `publish_house_id` decimal(10,0) NOT NULL COMMENT 'ИД издательства',
  `book_id` decimal(10,0) NOT NULL COMMENT 'ИД издвания'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Организации, связанные с изданием';

-- --------------------------------------------------------

--
-- Структура таблицы `reader_type`
--

CREATE TABLE `reader_type` (
  `id` decimal(10,0) NOT NULL COMMENT 'ИД записи',
  `type_name` varchar(50) DEFAULT NULL COMMENT 'Наименование типа',
  `age_min` decimal(10,0) DEFAULT NULL COMMENT 'Минимальный возраст',
  `age_max` decimal(10,0) DEFAULT NULL COMMENT 'Максимальный возраст'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Тип читателя по возрасту';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `author_role`
--
ALTER TABLE `author_role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_book_type_fk` (`book_type_id`),
  ADD KEY `book_format_book_fk` (`book_format_id`),
  ADD KEY `book_language_fk` (`language_id`),
  ADD KEY `book_reader_type_fk` (`reader_type_id`),
  ADD KEY `cover_type_book_fk` (`cover_type_id`);

--
-- Индексы таблицы `book_book_group`
--
ALTER TABLE `book_book_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_book_group_un` (`book_id`,`book_group_id`),
  ADD KEY `book_book_book_group_fk` (`book_group_id`);

--
-- Индексы таблицы `book_content`
--
ALTER TABLE `book_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_content_book_fk` (`book_id`),
  ADD KEY `book_content_novel_version_fk` (`novel_version_id`);

--
-- Индексы таблицы `book_format`
--
ALTER TABLE `book_format`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_format_group_fk` (`book_format_group_id`);

--
-- Индексы таблицы `book_format_group`
--
ALTER TABLE `book_format_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_format_group_un` (`group_name`);

--
-- Индексы таблицы `book_group`
--
ALTER TABLE `book_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_type_book_group_fk` (`book_group_type_id`);

--
-- Индексы таблицы `book_group_type`
--
ALTER TABLE `book_group_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_group_type_un` (`book_group_type_name`);

--
-- Индексы таблицы `book_paper`
--
ALTER TABLE `book_paper`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paper_book_paper_un` (`book_id`,`paper_id`),
  ADD KEY `paper_book_paper_fk` (`paper_id`);

--
-- Индексы таблицы `book_print_type`
--
ALTER TABLE `book_print_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_print_type_un` (`book_id`,`print_type_id`),
  ADD KEY `book_print_type_fk` (`print_type_id`);

--
-- Индексы таблицы `book_type`
--
ALTER TABLE `book_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_type_name_name_un` (`book_type_name`);

--
-- Индексы таблицы `cover_type`
--
ALTER TABLE `cover_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cover_type_un` (`cover_name`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre_un` (`genre_name`);

--
-- Индексы таблицы `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `novel`
--
ALTER TABLE `novel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `novel_author`
--
ALTER TABLE `novel_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novel_author_author_fk` (`author_id`),
  ADD KEY `novel_author_novel_fk` (`novel_id`);

--
-- Индексы таблицы `novel_genre`
--
ALTER TABLE `novel_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novel_genre_genre_fk` (`genre_id`),
  ADD KEY `novel_genre_novel_fk` (`novel_id`);

--
-- Индексы таблицы `novel_version`
--
ALTER TABLE `novel_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novel_version_novel_fk` (`novel_id`),
  ADD KEY `novel_version_type_fk` (`novel_version_type_id`);

--
-- Индексы таблицы `novel_version_author`
--
ALTER TABLE `novel_version_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novel_version_author_author_fk` (`author_id`),
  ADD KEY `novel_version_author_role_fk` (`author_role_id`),
  ADD KEY `novel_version_author_vers_fk` (`novel_version_id`);

--
-- Индексы таблицы `novel_version_language`
--
ALTER TABLE `novel_version_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novel_version_language_fk` (`novel_version_id`),
  ADD KEY `novel_version_language_lang_fk` (`language_id`);

--
-- Индексы таблицы `novel_version_type`
--
ALTER TABLE `novel_version_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paper_type`
--
ALTER TABLE `paper_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genrev1_genre_name_un` (`paper_name`);

--
-- Индексы таблицы `print_type`
--
ALTER TABLE `print_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `print_type_un` (`type_name`);

--
-- Индексы таблицы `publish_group`
--
ALTER TABLE `publish_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publish_group_book_fk` (`book_id`),
  ADD KEY `publish_group_role_fk` (`publish_group_role_id`);

--
-- Индексы таблицы `publish_group_role`
--
ALTER TABLE `publish_group_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publish_group_role_un` (`role_name`);

--
-- Индексы таблицы `publish_house`
--
ALTER TABLE `publish_house`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publish_house_book`
--
ALTER TABLE `publish_house_book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publish_house_book_un` (`publish_house_id`,`book_id`),
  ADD KEY `book_publish_house_book_fk` (`book_id`);

--
-- Индексы таблицы `reader_type`
--
ALTER TABLE `reader_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reader_type_un` (`type_name`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`book_type_id`) REFERENCES `book_type` (`id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`book_format_id`) REFERENCES `book_format` (`id`),
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  ADD CONSTRAINT `book_ibfk_4` FOREIGN KEY (`reader_type_id`) REFERENCES `reader_type` (`id`),
  ADD CONSTRAINT `book_ibfk_5` FOREIGN KEY (`cover_type_id`) REFERENCES `cover_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_book_group`
--
ALTER TABLE `book_book_group`
  ADD CONSTRAINT `book_book_group_ibfk_1` FOREIGN KEY (`book_group_id`) REFERENCES `book_group` (`id`),
  ADD CONSTRAINT `book_book_group_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_content`
--
ALTER TABLE `book_content`
  ADD CONSTRAINT `book_content_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `book_content_ibfk_2` FOREIGN KEY (`novel_version_id`) REFERENCES `novel_version` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_format`
--
ALTER TABLE `book_format`
  ADD CONSTRAINT `book_format_ibfk_1` FOREIGN KEY (`book_format_group_id`) REFERENCES `book_format_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_group`
--
ALTER TABLE `book_group`
  ADD CONSTRAINT `book_group_ibfk_1` FOREIGN KEY (`book_group_type_id`) REFERENCES `book_group_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_paper`
--
ALTER TABLE `book_paper`
  ADD CONSTRAINT `book_paper_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `book_paper_ibfk_2` FOREIGN KEY (`paper_id`) REFERENCES `paper_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_print_type`
--
ALTER TABLE `book_print_type`
  ADD CONSTRAINT `book_print_type_ibfk_1` FOREIGN KEY (`print_type_id`) REFERENCES `print_type` (`id`),
  ADD CONSTRAINT `book_print_type_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Ограничения внешнего ключа таблицы `novel_author`
--
ALTER TABLE `novel_author`
  ADD CONSTRAINT `novel_author_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `novel_author_ibfk_2` FOREIGN KEY (`novel_id`) REFERENCES `novel` (`id`);

--
-- Ограничения внешнего ключа таблицы `novel_genre`
--
ALTER TABLE `novel_genre`
  ADD CONSTRAINT `novel_genre_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `novel_genre_ibfk_2` FOREIGN KEY (`novel_id`) REFERENCES `novel` (`id`);

--
-- Ограничения внешнего ключа таблицы `novel_version`
--
ALTER TABLE `novel_version`
  ADD CONSTRAINT `novel_version_ibfk_1` FOREIGN KEY (`novel_id`) REFERENCES `novel` (`id`),
  ADD CONSTRAINT `novel_version_ibfk_2` FOREIGN KEY (`novel_version_type_id`) REFERENCES `novel_version_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `novel_version_author`
--
ALTER TABLE `novel_version_author`
  ADD CONSTRAINT `novel_version_author_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `novel_version_author_ibfk_2` FOREIGN KEY (`author_role_id`) REFERENCES `author_role` (`id`),
  ADD CONSTRAINT `novel_version_author_ibfk_3` FOREIGN KEY (`novel_version_id`) REFERENCES `novel_version` (`id`);

--
-- Ограничения внешнего ключа таблицы `novel_version_language`
--
ALTER TABLE `novel_version_language`
  ADD CONSTRAINT `novel_version_language_ibfk_1` FOREIGN KEY (`novel_version_id`) REFERENCES `novel_version` (`id`),
  ADD CONSTRAINT `novel_version_language_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`);

--
-- Ограничения внешнего ключа таблицы `publish_group`
--
ALTER TABLE `publish_group`
  ADD CONSTRAINT `publish_group_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `publish_group_ibfk_2` FOREIGN KEY (`publish_group_role_id`) REFERENCES `publish_group_role` (`id`);

--
-- Ограничения внешнего ключа таблицы `publish_house_book`
--
ALTER TABLE `publish_house_book`
  ADD CONSTRAINT `publish_house_book_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `publish_house_book_ibfk_2` FOREIGN KEY (`publish_house_id`) REFERENCES `publish_house` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
