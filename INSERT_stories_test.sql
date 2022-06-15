-- вставка тестовых значений (НЕ ИСПОЛЬЗОВАТЬ В ПАТЧЕ! Введено для этапа разработки хранилища)
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (1, 'Veronica', 1, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (1, 'Veronica', 2, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (1, 'Veronica', 2, 2, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (1, 'Veronica', 3, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (1, 'Veronica', 3, 2, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (1, 'Veronica', 3, 3, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (1, 'Veronica', 3, 4, SYSDATETIME(), SYSDATETIME());


GO

insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 1, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 2, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 2, 2, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 3, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 3, 2, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 3, 3, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 3, 4, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 3, 5, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.stories (story_id, story_name, level_id, page_id, update_date, created_date) values (2, 'New', 3, 6, SYSDATETIME(), SYSDATETIME());

-- завершение транзакции (если она не настроена на автономность)
--GO
--commit;