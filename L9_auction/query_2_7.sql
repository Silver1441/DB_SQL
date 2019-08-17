SELECT items.item_id, items.title
FROM items
WHERE items.stop_date >= '2019-08-18' AND items.users_user_id = '6';