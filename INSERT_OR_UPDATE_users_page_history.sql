-- поиск пользователя в таблице
SELECT upi.user_id, upi.page_id FROM voice.users_page_history upi
INNER JOIN voice.stories s ON upi.story_id = s.story_id AND 
                                                    upi.level_id = s.level_id AND 
                                                    upi.page_id = s.page_id
WHERE upi.user_name = 'egor_bardo' AND upi.story_id = 3;;

-- если данные не найдены
if (no_data_found) {
	-- поиск пользователя по всем историям
	SELECT DISTINCT user_id from voice.users_page_history
	WHERE user_name = 'egor_bardo';
	
	-- если данные не найдены, то вставляем нового пользователя, иначе добавляем новую историю пользователю
	if (no_data_found) {
		INSERT INTO voice.users_page_history (user_id, user_name, story_id, level_id, page_id, update_date, created_date) 
             VALUES (NEXT VALUE FOR voice.user_id_sqnc, 'egor_bardo', 3, 1, 1, SYSDATETIME(), SYSDATETIME());
	} else {
		INSERT INTO voice.users_page_history (user_id, user_name, story_id, level_id, page_id, update_date, created_date) 
             VALUES (user_id, 'egor_bardo', 3, 1, 1, SYSDATETIME(), SYSDATETIME());
	}
}

-- обновление страницы за пользователем (при переходе на новую)
UPDATE voice.users_page_history
SET page_id = 2
WHERE user_name = 'egor_bardo' AND story_id = 3;