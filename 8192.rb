# 1/8192の確率を引くまでの回数を計算する関数
def calculate_trials_until_success
  count = 0
  until rand(8192).zero?  # 1/8192の確率で0が出るまでループ
    count += 1
  end
  return count
end

# メインプログラム
trials = calculate_trials_until_success
puts "1/8192の確率を引くまでにかかった試行回数: #{trials}回"