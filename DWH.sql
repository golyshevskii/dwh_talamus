-- удаление схемы перед повторным созданием (если существует. НЕ ИСПОЛЬЗОВАТЬ В ПАТЧЕ! Введено для этапа разработки хранилища)
DROP SCHEMA IF EXISTS voice;
GO
CREATE SCHEMA voice;
GO
-- удаление функции секционирования таблицы перед повторным созданием (если существует. НЕ ИСПОЛЬЗОВАТЬ В ПАТЧЕ! Введено для этапа разработки хранилища)
--DROP PARTITION FUNCTION p_page_id;

-- создание функции секционирования для интервалов (-inf, 1) [1, 2) [2, 3) [3, 4) [4, 5) [5, 6) [6, 7) [8, 9) [9, 10) [10, +inf)
-- создается для оптимизации запроса поиска информации в таблице
CREATE PARTITION FUNCTION pf_story_id(INT) AS RANGE RIGHT FOR VALUES (1, 2, 3, 4);
GO
-- удаление секционированной схемы перед повторным созданием (если существует. НЕ ИСПОЛЬЗОВАТЬ В ПАТЧЕ! Введено для этапа разработки хранилища)
--DROP PARTITION SCHEME ps_story_id;

-- создание секционированной схемы, где все секции (1, 2, 3, 4) будут храниться в файловой группе PRIMARY
CREATE PARTITION SCHEME ps_story_id AS PARTITION pf_story_id ALL TO ('PRIMARY');
GO
-- удаление таблицы перед повторным созданием (если существует. НЕ ИСПОЛЬЗОВАТЬ В ПАТЧЕ! Введено для этапа разработки хранилища)
--DROP TABLE IF EXISTS voice.users_page_history;

-- создание секционнированной таблицы данных о развилки и странице развилки истории, на которой пользователь остановился
CREATE TABLE voice.users_page_history 
(
    user_id         BIGINT,         -- идентификатор пользователя
    user_name       VARCHAR(64),    -- имя пользователя (максимальная длина имени в telegram = 32 символа)
    story_id        INT,            -- идентификатор истории
    level_id        INT,            -- идентификатор иерархии(уровень рекурсии) истории
    page_id         INT,            -- страница истории
    update_date     DATETIME,       -- дата и время обновления иерархии\страницы
    created_date    DATETIME        -- дата и время создания записи
) ON ps_story_id (story_id);        -- секционирование таблицы
GO
-- создание уникальных индексов таблицы, для исключения дублей и оптимизации выборки
CREATE UNIQUE INDEX users_page_history_ui ON voice.users_page_history (user_id, user_name, story_id ASC);
GO

-- создание таблицы данных о историях
CREATE TABLE voice.stories 
(
    story_id        INT,
    story_name      VARCHAR(128),
    level_id        INT,
    page_id         INT,
    update_date     DATETIME,
    created_date    DATETIME
);
GO
-- создание уникальных индексов таблицы, для исключения дублей и оптимизации выборки
CREATE UNIQUE INDEX stories_ui ON voice.stories (story_id ASC, level_id, page_id);
GO

-- создание последовательности для автоматического добавления id пользователя (новенького) в табличку user_page_history
CREATE SEQUENCE voice.user_id_sqnc START WITH 1 INCREMENT BY 1;
