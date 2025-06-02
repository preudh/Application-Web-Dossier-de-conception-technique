-- ma commande 6 peut-elle contenir plusieurs pizzas?

select `tab_order`.`o_id`, `tab_order_line`.`o_id`, `tab_order_line`.`order_line_quantity`, `tab_order_line`.`p_id`, `tab_product`.`p_id`, `tab_product`.`p_category`
FROM `tab_order`
LEFT JOIN `tab_order_line` ON `tab_order_line`.`o_id` = `tab_order`.`o_id`
LEFT JOIN `tab_product` ON `tab_order_line`.`p_id` = `tab_product`.`p_id`
where `tab_order`.`o_id` = '6' AND `tab_product`.`p_category` = 'pizza';

-- puis-je retrouver le contenu de la commande 2?
select `tab_order`.`o_id`, `tab_order_line`.`o_id`, `tab_order_line`.`p_id`, `tab_order_line`.`order_line_quantity`, `tab_product`.`p_id`, `tab_product`.`p_name`
FROM `tab_order`
LEFT JOIN `tab_order_line` ON `tab_order_line`.`o_id` = `tab_order`.`o_id`
LEFT JOIN `tab_product` ON `tab_order_line`.`p_id` = `tab_product`.`p_id`
where `tab_order`.`o_id` = '2'

-- puis-je afficher les commandes en statut preparation dans le point de vente OC Pizza 4 ?

select `tab_order`.`o_id`, `tab_order`.`o_statut`, `tab_order`.`r_id`, `tab_restaurant`.`r_name`
FROM `tab_order`
LEFT JOIN `tab_restaurant` ON `tab_order`.`r_id` = `tab_restaurant`.`r_id`
where `tab_order`.`o_statut` = 'in prepara' AND `tab_order`.`r_id` = '4';

-- puis-je afficher les commandes en statut preparation des clients dans les pizzerias?
select `tab_order`.`o_statut`, `tab_order`.`u_id`, `tab_user`.`u_id`, `tab_user`.`u_first_name`, `tab_user`.`u_last_name`, `tab_user`.`r_id`, `tab_restaurant`.`r_name`
FROM `tab_order`
	LEFT JOIN `tab_user` ON `tab_order`.`u_id` = `tab_user`.`u_id`
	LEFT JOIN `tab_restaurant` ON `tab_order`.`r_id` = `tab_restaurant`.`r_id`
where `tab_order`.`o_statut` = 'in prepara';

-- puis-je retrouver le prix payé pour une pizza dans une commande terminée même si le prix a changé depuis?

SELECT `tab_order`.`o_id`, `tab_order_line`.`o_id`, `tab_order_line`.`p_id`, `tab_product`.`p_id`, `tab_product`.`p_name`, `tab_asso_restaurant_product`.`p_id`,
`tab_asso_restaurant_product`.`price_sale_excluding_vat`,`tab_asso_restaurant_product`.`start_date`
FROM `tab_order`
	LEFT JOIN `tab_order_line` ON `tab_order_line`.`o_id` = `tab_order`.`o_id`
	LEFT JOIN `tab_product` ON `tab_order_line`.`p_id` = `tab_product`.`p_id`
	LEFT JOIN `tab_asso_restaurant_product` ON `tab_asso_restaurant_product`.`p_id` = `tab_product`.`p_id`
WHERE `tab_order`.`o_id` = '12' AND `tab_asso_restaurant_product`.`r_id` = '2' AND `tab_product`.`p_category` = 'pizza'AND `tab_asso_restaurant_product`.`start_date` = '2020/10/10';

-- puis-je lister les pizzas pour lesquelles tous les ingrédients sont en stock?

SELECT `tab_pizza`.`piz_id`, `tab_pizza`.`piz_name`, `tab_asso_ingredient_pizza`.`piz_id`, `tab_asso_ingredient_pizza`.`ing_id`, `tab_ingredient`.`ing_name`, `tab_asso_ingredient_inventory`.`ing_id`, `tab_asso_ingredient_inventory`.`i_id`, `tab_inventory_ingredient`.`i_quantity`, `tab_ingredient`.`ing_unit`
FROM `tab_pizza`
	LEFT JOIN `tab_asso_ingredient_pizza` ON `tab_asso_ingredient_pizza`.`piz_id` = `tab_pizza`.`piz_id`
	LEFT JOIN `tab_ingredient` ON `tab_asso_ingredient_pizza`.`ing_id` = `tab_ingredient`.`ing_id`
	LEFT JOIN `tab_asso_ingredient_inventory` ON `tab_asso_ingredient_inventory`.`ing_id` = `tab_ingredient`.`ing_id`
	LEFT JOIN `tab_inventory_ingredient` ON `tab_asso_ingredient_inventory`.`i_id` = `tab_inventory_ingredient`.`i_id`;



