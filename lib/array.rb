# a = [1,2,3]
# a[1] = 20
# b = ['apple', 'banana', 3, 'orange',]
# a << b
# a.delete_at(1)
# p a

# # 多重代入
# a,b,c,d = [1,2,3,4]
# p a
# p b
# p d
# p c

# 右辺の数が少ないとnilが入る
# c,d = [10]
# p c
# p d

# 右辺の数が多いと切り捨てられる
# e,f = [10,20,30]
# p e
# p f

# 配列のまま受け取る
# quo_rem = 17.divmod(3)
# answer = "商は#{quo_rem[0]}, 余りは#{quo_rem[1]}"
# p answer

# 個別の変数で受け取る
# a,b = 19.divmod(5)
# answer = "商は#{a},余りは#{b}"
# p answer

# a = [1,2,3,4,5,6,7,8,9]
# # 配列から奇数の要素を排除する
# a.delete_if do |n|
#   n.odd?
# end
# p a

# :等で条件分岐
# numbers = [1,2,3,4]
# sum = 0
# sum_value = 0
# numbers.each do |n|
#   # even? 偶数であれば真、そうでない場合は偽を返す。　10(真の場合の処理):n(偽の場合の処理)
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value
# end
# p sum


# numbers = [1,2,3,4]
# sum = 0
# # do ... endの代わりに{}を使う。改行を含む長いブロックを書く場合はdo ... end、一行でコンパクトに書きたい場合は{}を用いる
# numbers.each { |n|
#   sum += n
# }
# p sum