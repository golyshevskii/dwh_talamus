-- вставка тестовых значений (НЕ ИСПОЛЬЗОВАТЬ В ПАТЧЕ! Введено для этапа разработки хранилища)
insert into voice.users_page_history (user_id, user_name, story_id, level_id, page_id, update_date, created_date) values (1, 'egor_bardo', 1, 1, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.users_page_history (user_id, user_name, story_id, level_id, page_id, update_date, created_date) values (2, 'python_poseur', 1, 1, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.users_page_history (user_id, user_name, story_id, level_id, page_id, update_date, created_date) values (3, 'rinerte', 1, 1, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.users_page_history (user_id, user_name, story_id, level_id, page_id, update_date, created_date) values (1, 'egor_bardo', 2, 1, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.users_page_history (user_id, user_name, story_id, level_id, page_id, update_date, created_date) values (2, 'python_poseur', 2, 1, 1, SYSDATETIME(), SYSDATETIME());
GO
insert into voice.users_page_history (user_id, user_name, story_id, level_id, page_id, update_date, created_date) values (3, 'rinerte', 2, 1, 1, SYSDATETIME(), SYSDATETIME());

-- завершение транзакции (если она не настроена на автономность)
--GO
--commit;