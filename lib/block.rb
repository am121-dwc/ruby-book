# fruits = ['apple', 'orange', 'melon']
# fruits.each_with_index{ |fruit, i| puts "#{i}: #{fruit}"}


# blockローカル変数
numbers = [1, 2, 3, 4]
sum = 0


# block内でのみの変数sumを定義
numbers.each do |n; sum|
  sum = 10
  sum += n
  p sum
end
# こちらはブロック外で定義されたsumなので最初の0が入る。
p sum