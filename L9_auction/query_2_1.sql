SELECT users.user_id, users.full_name, bids.bid_id, items.item_id, items.title, bids.bid_value
FROM users
JOIN bids ON bids.users_user_id = users.user_id
JOIN items ON bids.items_item_id = items.item_id
WHERE (users.user_id = 1);