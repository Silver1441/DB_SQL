SELECT users.user_id, users.full_name, items.item_id, items.title, items.description
FROM users
JOIN items ON items.users_user_id = users.user_id
WHERE (users.user_id = 6);