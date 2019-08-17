SELECT items.item_id, items.title, items.start_price, MAX(bids.bid_value) AS 'biggest bid'
FROM items
JOIN bids ON bids.items_item_id = items.item_id
GROUP BY items.item_id;
