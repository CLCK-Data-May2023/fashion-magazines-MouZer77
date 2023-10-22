SELECT orders.*, customers.customer_name, subscriptions.subscription_length, PRINTF(subscriptions.price_per_month * subscriptions.subscription_length) AS total_amount_due_formatted
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
JOIN subscriptions
ON orders.subscription_id = subscriptions.subscription_id
WHERE order_status = 'unpaid'
AND subscriptions.description = 'Fashion Magazine';