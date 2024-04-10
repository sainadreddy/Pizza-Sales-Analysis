SELECT 
    a.order_details_id as pizza_id,
	a.order_id,
	c.pizza_id as pizza_name_id,
    a.quantity,
    b.date as order_date,
    b.time as order_time,
	c.price as unit_price,
	(a.quantity * c.price) as total_price,
    c.size as pizza_size,
    d.category as pizza_category,
    d.ingredients as pizza_ingredients,
    d.name as pizza_name
    
FROM 
    order_details a
INNER JOIN 
    orders b ON a.order_id = b.order_id
INNER JOIN 
    pizzas c ON a.pizza_id = c.pizza_id
INNER JOIN 
    pizza_types d ON d.pizza_type_id = c.pizza_type_id;
