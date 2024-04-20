# currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# currencies['italy'] = 'euro'
# p currencies


# currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# currencies.each do |key, value|
#   puts "#{key} : #{value}"
# end

# currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# currencies.each do |key_value|
#   key = key_value[0]
#   value = key_value[1]
#   puts "#{key} : #{value}"
# end


# a = { 'x' => 1, 'y' => 2, 'z' => 3}
# b = { 'x' => 1, 'y' => 2, 'z' => 3}
# p a == b

# d = { 'x' => 10, 'y' => 2, 'z' => 3}
# p a == d

# currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# # 返り値はyen(今回の場合)
# currencies.delete('japan')
# p currencies.delete('italy') { |key| "Not found: #{key}" }
# p currencies