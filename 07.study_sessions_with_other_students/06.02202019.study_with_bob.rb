# Without running the code, determine what it will do just by looking at it.

a = 'abcde'
b = 'abcde'
c = 'abcde'


a = a.chars.each { |char| char.succ }.join

b.each_char { |char| char.succ }

5.times { |i| c[i] = c[i].succ }

p a
p b
p c