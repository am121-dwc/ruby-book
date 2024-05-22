# add_proc = Proc.new{ |a,b| a + b }
# callメソッドを使う
# p add_proc.call(10,20)
# yieldメソッドを使う
# p add_proc.yield(10,20)
# .()を使う
# p add_proc.(10,20)
# []を使う
# p add_proc[10, 25]
# p add_proc === [20, 40]

# -----------------------------
# def judge(age)
#   # 20より大きければtrueを返すProcオブジェクト
#   adult = Proc.new { |n| n > 20 }
#   # 20より小さければtrueを返すProcオブジェクト
#   child = Proc.new { |n| n < 20 }

#   case age
#   when adult
#     '大人です'
#   when child
#     '子供です'
#   else
#     '二十歳です'
#   end
# end

# p judge(25)
# p judge(18)
# p judge(20)

# -------------------------------
# def generate_proc(array)
#   counter = 0
#   # Procオブジェクトをメソッドの戻り値とする
#   Proc.new do
#     # ローカル変数のcounterを加算する
#     counter += 10
#     # メソッド引数のarrayにcounterの値を追加する
#     array << counter
#   end
# end
# values = []
# sample_proc = generate_proc(values)
# p values
# sample_proc.call
# sample_proc.call
# sample_proc.call
# p values

# ---------------------
# def proc_return
#   # Proc.newでreturnを使う
#   f = Proc.new { |n| return n * 10 }
#   ret = [1,2,3].map(&f)
#   "ret: #{ret}"
# end
# p proc_return
# def lambda_return
#   # ラムダでreturnを使う
#   f = ->(n) { return n * 10 }
#   ret = [1,2,3].map(&f)
#   "ret: #{ret}"
# end
# p lambda_return
# ------------------------
# def proc_break
#   # Proc.newでbreakを使う
#   f = Proc.new { |n| break n * 10 }
#   ret = [1,2,3].map(&f)
#   "ret: #{ret}"
# end
# p proc_break
# def lambda_break
#   # ラムダでbreakを使う
#   f = ->(n) { break n * 10}
#   ret = [1,2,3].map(&f)
#   "ret: #{ret}"
# end
# p lambda_break