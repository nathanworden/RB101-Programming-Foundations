# Questions 8 to 10
# Your team is working on some reporting functionality for the Sales Department. 
# Your brief is to produce code that lets the Sales Department report on the value of 
# orders per customer. Each order is represented by a hash within an array, but there 
# may be more than one order per customer. The Sales Department wants to report two things:

# The total value of orders for each customer
# The total value of fulfilled orders for each customer
# This is an example of the provided data:

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]
# Your team decides to approach the problem in two stages:

# Convert the initial data structure to a more usable format
# Extract the required information from the restructured data
# Note: the objective with this set of questions is to test your ability to read and 
# understand the code. Try to answer these questions by examining and mentally parsing what
#  the code is doing rather than simply running the complete code samples.


# Question 8
# You agree that the restructured data should look like this:

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]
# The team comes up with four possible solutions to convert the initial data to the new 
# structure. Select all the solutions which correctly restructure the data.


# Option 1: 

customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << [
      row[:order_fulfilled],
      row[:order_value]
    ]
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        [
          row[:order_fulfilled],
          row[:order_value]
        ]
      ]
    }
  end
end

customer_orders = customer_orders.values

# This is incorrect because it creates an array of arrays for the orders instead of an
# array of hashes.


# Option 2:

temp_orders = {}

order_data.each do |row|
  temp_orders[row[:customer_id]] = {
      customer_name: row[:customer_name],
      customer_id: row[:customer_id],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
end

customer_orders = temp_orders.values


# This is incorrect because when a customer has a second order, the order array of hashes
# gets overwritten instead of added to.

# Option 3:  

customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << {
      order_fulfilled: row[:order_fulfilled],
      order_value: row[:order_value]
    }
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
  end
end

customer_orders = customer_orders.values

# This solution is correct because it successfully sets up the hases, and then adds to the 
# orders section when a customer has a new order.


# Option 4:

customer_orders = order_data.map do |row|
  {
    customer_id: row[:customer_id],
    customer_name: row[:customer_name],
    orders: [
      {
        order_fulfilled: row[:order_fulfilled],
        order_value: row[:order_value]
      }
    ]
  }
end

# This is incorrect because it transforms each row in the old data set when it should have
# combined the orders for customers.






















