# numbers = [1,2,3,4,5].shuffle
# numbers.each do |n|
#   puts n
#   # n=5 break(end)
#   break if n == 5
# end

# numbers = [1,2,3,4,5].shuffle
# i = 0
# while i < numbers.size
#   n = numbers[i]
#   puts n
#   break if n == 5
#   i += 1
# end

# fruits = ['apple', 'orange', 'melon']
# numbers = [1,2,3]
# fruits.each do |fruit|
#   numbers.shuffle.each do |n|
#     puts "#{fruit}, #{n}"
#     break if n == 3
#   end
# end

# foods = ['ピーマン','トマト','セロリ']
# foods.each do |food|
#   print "Do you like #{food} ?"
#   # sampleは配列から一つランダムに一要素を取得するメソッド
#   answer = ['yes', 'no'].sample
#   puts answer
#   redo unless answer == 'yes'
# end

# foods = ['ピーマン','トマト','セロリ']
# count = 0
# foods.each do |food|
#   print "#{food}は好きですか？ => "
#   # no only
#   answer = 'no'
#   puts answer

#   count += 1
#   redo if answer != 'yes' && count < 2

#   # count reset
#   count = 0
# end

