PRODUCTS = [
  { name: 'ThinkPad x210', price: 220 },
  { name: 'ThinkPad x220', price: 250 },
  { name: 'ThinkPad x250', price: 979 },
  { name: 'ThinkPad x230', price: 300 },
  { name: 'ThinkPad x230', price: 330 },
  { name: 'ThinkPad x230', price: 350 },
  { name: 'ThinkPad x240', price: 370 },
  { name: 'MacBook Leopard', price: 300 },
  { name: 'MacBook Air', price: 700 },
  { name: 'MacBook Pro`', price: 600 },
  { name: 'MacBook', price: 1449 },
  { name: 'Dell Latitiude', price: 200 },
  { name: 'Dell Latitiude', price: 650 },
  { name: 'Dell Inspiron', price: 300 },
  { name: 'Dell Inspiron', price: 450 }
]

query = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad'
}

#  == { name: 'ThinkPad x220', price: 250 }

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

# ==   { name: 'Dell Inspiron', price: 300 },
# == { name: 'Dell Inspiron', price: 450 }


# Write a method that does a search on the query. It returns a result that is based on the 
# hash. The hash is a serach query. The product is the data. Return the data that mathes the 
# search query.


def search(query_hsh)
  PRODUCTS.select do |element|
    element[:price] >= query_hsh[:price_min] && 
    element[:price] <= query_hsh[:price_max] &&
    element[:name].downcase.include?(query_hsh[:q])
  end
end

p search(query)
p search(query2)