numbers = [1,2,3,4]
sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p n
p sum
p sum_value