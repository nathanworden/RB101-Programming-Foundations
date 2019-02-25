Question 10
For the filtered totals, one of the team suggests the following solution:

fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if order[:order_fulfilled]
  end

  fulfilled_orders[index][:order_value] = order_value
end
While reviewing it, you spot a bug. Identify the line causing the bug.

Your Answer
fulfilled_orders = customer_orders.map do |customer|
 order_value = data[:orders].reduce(0) do |total, order|
 total + order[:order_value] if order[:order_fulfilled]
 fulfilled_orders[index][:order_value] = order_value



 # Answer:

# The line causing the bug is:
 # total + order[:order_value] if order[:order_fulfilled] 