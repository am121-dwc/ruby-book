# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u">Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>

# html = <<-HTML
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u" selected>Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# HTML

# replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\\1,\\2')

# puts replaced

# text = <<-TEXT
# def hello(name)
#   puts "Hello, \#{name}!"
# end

# hello('Alice')

# hello('Bob')

# hello('Carol')
# TEXT

# puts text.gsub(/^[ \t]+$/, '')

# Lorem ipsum dolor sit amet.
# Vestibulum luctus est ut mauris tempor tincidunt.
# Suspendisse eget metus
# Curabitur nec urna eget ligula accumsan congue.

# {
#   japan: 'yen',
#   america: 'dollar',
#   italy: 'euro'
# }

# 後読み
# text = <<-TEXT
# type=zip; filename=users.zip; size=1024;
# type=xml; filename=posts.xml; size=2048;
# TEXT
# puts text.scan(/(?<=filename=)[^;]+/)

# 後読み無し
# text = <<-TEXT
# type=zip; filename=users.zip; size=1024;
# type=xml; filename=posts.xml; size=2048;
# TEXT
# puts text.scan(/filename=[^;]+/).map { |s| s.split('=').last }


# text = <<-TEXT
# John:guitar, George:guitar, Paul:bass, Ringo:drum
# Freddie:vocal, Brian:guitar, John:bass, Roger:drum
# TEXT
# puts text.scan(/\w+(?=:bass)/)
# --

# puts 'Start.'
# module Greeter
#   def hello
#     'hello'
#   end
# end
# # 例外処理を組み込んで例外に対処する
# begin
#   greeter = Greeter.new
# rescue
#   puts '例外が発生したため、このまま以降の処理を実行します。'
# end
# # --
# # greeter = Greeter.new
# # # モジュールでインスタンスを作成する事はできないのでここより下は実行されない
# # --
# puts 'End.'

# # --------------
# # メソッド1にだけ例外処理を記述する
# def method_1
#   puts 'method_1 start.'
#   begin
#     method_2
#   rescue
#     puts '例外が発生しました。'
#   end
#   puts 'method_1 end.'
# end

# def method_2
#   puts 'method_2 start.'
#   method_3
#   puts 'method_2 end.'
# end

# def method_3
#   puts 'method_3 start.'
#   # ZeroDivisionErrorを発生させる(整数に対して整数の 0 で除算を行ったときに発生します。)
#   1 / 0
#   puts 'method_3 end.'
# end

# # 処理を開始する
# method_1
# # --------------------------------

# begin 
#   1 / 0
# rescue => e
#   puts "エラークラス: #{e.class}"
#   puts "エラークラス: #{e.message}"
#   puts "バックトレース -----"
#   puts e.backtrace
#   puts "-----"
# end
# --------------------------

# begin 
#   1 / 0
# begin
#   'abc'.foo
# rescue ZeroDivisionError
#   puts "0で除算しました"
# rescue NoMethodError
#   puts "存在しないメソッドが呼び出されました"
# end
# begin
#   'abc'.foo
# rescue ZeroDivisionError, NoMethodError => e
#   puts "0で除算したか、存在しないメソッドが呼び出されました"
#   puts "エラー: #{e.class} #{e.message}"
# end
# ------------------------------------------------------

# retry_count = 0
# begin
#   puts '処理を開始します'
#   # ワザと例外を発生させる
#   1 / 0
# rescue
#   retry_count +=  1
#   if retry_count <= 3
#     puts "retryします。(#{retry_count}回目)"
#     retry
#   else
#     puts 'retryに失敗しました。'
#   end
# end
# -------------------------------------------------

# def currency_of(country)
#   case country
#   when :japan
#     'yen'
#   when :us
#     'dollar'
#   when :India
#     'rupee'
#   else
#     # 意図的に例外を発生させる
#     raise "無効な国名です。 #{country}"
#   end
# end

# p currency_of(:japan)
# p currency_of(:italy)
# --------------------------------

# require 'date'

# def convert_heisei_to_date(heisei_text)
#   # 正規表現の修正: 平成(\d+)年(\d+)月(\d+)日
#   m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  
#   if m
#     year = m[:jp_year].to_i + 1988
#     month = m[:month].to_i
#     day = m[:day].to_i

#     # スペルミスの修正: vaild_date? -> valid_date?
#     if Date.valid_date?(year, month, day)
#       return Date.new(year, month, day)
#     end
#   end
#   # 無効な日付の場合はnilを返す
#   nil
# end

# p convert_heisei_to_date('平成28年12月31日')
# p convert_heisei_to_date('平成28年99月32日')

# input = gets
# p input.chomp
# ----------------------------------

# 例外が発生しない場合
# p 1 / 1 rescue 0

# 例外が発生する場合
# p 1 / 0 rescue 0

# require 'date'
# def to_date(string)
#   begin 
#     # 文字列のパースを試みる
#     Date.parse(string)
#   rescue ArgumentError
#     # パースできない場合はnilを返す
#     nil
#   end
# end

# # パース可能な文字列を渡す
# p to_date('2017-01-01')
# # パース不可能な文字列を渡す
# p to_date('abcdef')
