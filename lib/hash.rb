# h = { us: 'dollar', india: 'rupee' }
# j = { japan: 'yen' }
# p h.merge(j)


# h = Hash.new('hello')
# a = h[:foo]
# b = h[:bar]
# # a = b ?
# p a.equal?(b)
# a.upcase!
# p a
# p b
# p h

h = Hash.new { 'hello' }
a = h[:foo]
b = h[:bar]
# a ≠ b 毎回新しく生成
a.upcase!
p a
p b




# h = Hash.new { |hash, key| hash[key] = 'hello' }
# h[:foo]
# h[:bar]
# p h