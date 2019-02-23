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



# Question 9
# For the second part of the solution, extracting the data, the format 
# that is required in each case is as follows:

all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]