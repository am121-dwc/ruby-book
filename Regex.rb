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
'HELLO' =~ /hello/i

# %rでもオプションをつけられる
'HELLO' =~ %r{hello}i