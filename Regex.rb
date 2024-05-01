# regex = /\d{3}-\d{4}/
# p regex.class

# マッチした場合は文字列の開始位置が入る
# p '123-4567' =~ /\d{3}-\d{4}/

# マッチしない場合はnilが帰る
# p 'hello' =~ /\d{3}-\d{4}/

# if '123a-4567' =~ /\d{3}-\d{4}/
#   puts 'マッチしました'
# else
#   puts 'マッチしませんでした'
# end

# マッチしなければtrue
# puts 'hello' !~ /\d{3}-\d{4}/
# マッチすればfalse
# puts '123-4567' !~ /\d{3}-\d{4}/

# text = '私の誕生日は1977年7月17日です。'
# m = /(\d+)年(\d+)月(\d+)日/.match(text)
# p m[1]
# p m[2]
# p m[3]

# 真偽値の判定とローカル変数への代入を同時に
# if m = /(\d+)年(\d+)月(\d+)日/.match(text)
  # マッチした場合の処理
# else
  # マッチしなかった場合の処理
# end


# p m[1..3]


# text = '私の誕生日は1977年7月17日です。'
# m = /(\d+)年(\d+)月(\d+)日/.match(text)
# p m[1]
# p m[2,2]
# p m[-1]

# text = '私の誕生日は1977年7月17日です'
# m = text.match(/(\d+)年(\d+)月(\d+)日/)
# p m

# text = '私の誕生日は1977年7月17日です'
# m = /(?<years>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
# p m["years"]
# p m["month"]
# p m["day"]

# p m[2]

# if /(?<years>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
#   puts "#{years}/#{month}/#{day}"
# end

# text = '123,456-789'

# 文字列で区切り文字を指定する
# p text.split(',')

# p text.split(/,|-/)

# p text.gsub(',', ':')
# p text.gsub(/,|-/,':')


# text = '誕生日は1977年7月17日です。'
# p text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3日')


# text = '123,456-789'
# カンマはコロンに、ハイフンはスラッシュに帰る
# hash = { ',' => ':', '-' => '/' }
# p text.gsub(/,|-/, hash)

# text = '123,456-789'
# カンマはコロンに、それ以外はスラッシュに帰る
# p text.gsub(/,|-/){ |matched| matched  == ',' ? ':' : '/'}
# 破壊的ではない
# p text

# text = '123,456-789'
# !を付けると破壊的に
# text.gsub!(/,|-/, ':')
# p text

# iを使うと大文字小文字を区別しない
# 'HELLO' =~ /hello/i

# %rでもオプションをつけられる
# 'HELLO' =~ %r{hello}i

# mオプションがないと.は改行文字に含まれない
# p "Hello\nBye" =~ /Hello.Bye/ # nil

# mオプションがあると.が改行文字にマッチする
# p "Hello\nBye" =~ /Hello.Bye/m # 0

# regexp = Regexp.new('Hello.Bye', Regexp::MULTILINE)
# p "Hello\nBye" =~ regexp

# xオプションをつけると改行とスペースは無視され、コメントを書くことができる。
# regexp = /
# \d{3} #数字3文字
# -
# \d{4} #数字4文字
# /x
# p '123-4567' =~ regexp

# regexp = /
# \d{3}
# \ #←xオプションを用いている時に半角スペース等を含めたい場合エスケープして記述する。
# \d{4}
# /x
# p '123 4567' =~ regexp

# pattern = <<'TEXT'
# \d{3} #最初の3桁
# -     #区切りのハイフン
# \d{4} #最後の4桁
# TEXT
# regexp = Regexp.new(pattern, Regexp::EXTENDED)
# p "123-4567" =~ regexp

# iオプションとmオプションを同時に使う
# p "Hello\nBye" =~ /Hello.Bye/im

# regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
# p "Hello\nBYE" =~ regexp

# text = "私の誕生日は1977年7月17日です。"
# =~やmatchメソッドを用いるとマッチした結果が組み込み変数に代入される。
# p text =~ /(\d+)年(\d+)月(\d+)日/
# MatchDataオブジェクトを取得する
# p $&

# p $1 #一番目のキャプチャ
# p $2 #二番目のキャプチャ
# p $3 #三番目のキャプチャ

# 最後のキャプチャを表示
# p $+

# text = "私の誕生日は1977年7月17日です。"
# # =~演算子を用いるとマッチした結果をRegexp.last_matchで取得できる
# text =~ /(\d+)年(\d+)月(\d+)日/
# # MatchDataオブジェクトを取得する。
# p Regexp.last_match
# # マッチした部分全体を取得する。
# p Regexp.last_match(0)
# # 一番目から三番目のキャプチャを取得する。
# p Regexp.last_match(1)
# p Regexp.last_match(2)
# p Regexp.last_match(3)
# # 最後のキャプチャ文字を取得
# p Regexp.last_match(-1)
# # 最後から二番目を取得
# p Regexp.last_match(-2)

# マッチすればtrue
p /\d{3}-\d{4}/.match?('123-4567')
# マッチしても組み込み変数やRegexp.last_matchを書き換えない。
p $~
p Regexp.last_match
# 文字列と正規表現を入れ替えてもok
p '123-4567'.match?(/\d{3}-\d{4}/)