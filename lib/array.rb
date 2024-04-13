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