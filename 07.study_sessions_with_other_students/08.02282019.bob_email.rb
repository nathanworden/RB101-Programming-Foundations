# Hi Nathan,

# I was goofing around with passing different parameters to each, and found some 
# interesting stuff. Have a look at the block parameters in the three each method calls.
# The first one is standard, but look at those other two. Do you see what’s going on 
# with those? 

# Bob

2.6.0 :066 > a
 => [[:a, 1], [:b, 2], [:c, 3], [:d, 4], [:e, 5]] 
2.6.0 :067 > a.each { |x| p x }
[:a, 1]
[:b, 2]
[:c, 3]
[:d, 4]
[:e, 5]
 => [[:a, 1], [:b, 2], [:c, 3], [:d, 4], [:e, 5]] 
2.6.0 :068 > a.each { |(x,y)| p x; p y }
:a
1
:b
2
:c
3
:d
4
:e
5
 => [[:a, 1], [:b, 2], [:c, 3], [:d, 4], [:e, 5]] 
2.6.0 :070 > c
 => [[1, [2, 3]], [2, [3, 4]]] 
2.6.0 :073 > c.each { |(x,(y,z))| p x; p y; p z }
1
2
3
2
3
4
 => [[1, [2, 3]], [2, [3, 4]]] 