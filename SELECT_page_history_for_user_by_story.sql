SELECT upi.page_id FROM voice.users_page_history upi
INNER JOIN voice.stories s ON upi.story_id = s.story_id AND upi.level_id = s.level_id AND upi.page_id = s.page_id
WHERE upi.user_name = 'egor_bardo' AND upi.story_id = 1;