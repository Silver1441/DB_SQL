SELECT users.user_id, users.full_name, AVG(items.start_price) AS 'average starting price'
FROM users
JOIN items ON items.users_user_id = users.user_id
GROUP BY users.user_id;