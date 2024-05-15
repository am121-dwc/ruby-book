# # helloメソッドを持つGreetermノジュールを定義
# module Greeter
#   def hello
#     'hello'
#   end
# end

# # モジュールのインスタンスは作成できない。
# greeter = Greeter.new

# # 他のモジュールを継承して新しいモジュールを作る事は出来ない
# module AwesomeGreeter < Greeter
# end

# ログ出力用のメソッドを提供するモジュール
# 「ログ出力できる (log + able) 」という意味でLoggableという名前
# module Loggable
#   # logメソッドはprivateメソッドにする
#   private
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end

# class Product
#   # 上で作ったモジュールをincludeする
#   include Loggable

#   def title
#     # logメソッドはLoggableモジュールで定義したメソッド
#     log 'title is called.'
#     'A great movie'
#   end
# end

# class User
#   # こちらも同じようにincludeする
#   include Loggable

#   def name
#     # Loggableモジュールのメソッドが使える
#     log 'name is called.'
#     'Alice'
#   end
# end

# product = Product.new
# p product.title

# user = User.new
# p user.name

# # logメソッドはprivateメソッドなので外部から呼び出せない
# p product.log 'public?'

# module Loggable
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end

# class Product
#   # Loggableモジュールのメソッドを特異メソッド(クラスメソッド)としてミックスインする
#   extend Loggable

#   def self.create_products(names)
#     # logメソッドをクラスメソッド内で呼び出す
#     # (つまりlogメソッド自体もクラスメソッドになっている)
#     log 'create_product is called.'
#   end
# end

# # クラスメソッド経由logメソッドが呼び出される
# Product.create_products([])

# # Productクラスのクラスメソッドとして直接呼び出す事も可能
# Product.log('Hello')

# class Product
#   module Loggable
#     def log(text)
#       puts "[LOG] #{text}"
#     end
#   end
#   extend Loggable
#   # logメソッドをクラス構文の直下で呼び出す
#   # (クラスが読み込まれるタイミングで、このlogメソッドも実行される)
#   log 'Defined Product class.'
# end

# class Team
#   extend DeepFreezable
#   COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
# end

# # 配列自身と配列の全要素がfreezeされている
# p Team::COUNTRIES.frozen?
# p Team::all?{ |country| country.frozen? }

# class Bank
#   extend DeepFreezable
#   CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
# end
# # ハッシュ自身とハッシュの全要素(キーと値)がfreezeされている
# p Bank::CURRENCIES.freeze?
# p Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }

# module DeepFreezable
#   def deep_freeze(array_or_hash)
#     # 
#   end
# end


# class Second
#   def initialize(player, uniform_number)
#     @player = player
#     @uniform_number = uniform_number
#   end
# end

# class Second
#   def initialize(digits)
#     @digits = digits
#   end
# end

# # 二塁手のaliceを作成したい
# Second.new('alice', 13)

# # 時計の針を13秒を作成したい(module.rb:122:in `initialize': wrong number of arguments (given 2, expected 1) (ArgumentError))←最初のSecondを使おうとしている
# Second.new(13)


# module Baseball
#   # これはBaseballモジュールに関するクラス
#   class Second
#     def initialize(player, uniform_number)
#       @player = player
#       @uniform_number = uniform_number
#     end
#   end
# end

# module Clock
#   # これはClockモジュールに関するSecondクラス
#   class Second
#     def initialize(digits)
#       @digits = digits
#     end
#   end
# end

# base_sec = Baseball::Second.new('alice', 13)
# p base_sec
# clock_sec = Clock::Second.new(13)
# p clock_sec

# module Loggable
#   # 特異メソッドとしてメソッドを定義する
#   def self.log(text)
#     puts "[LOG] #{text}"
#   end
# end

# # ほかのクラスにミックスインしなくてもモジュール単体でそのメソッドを呼び出せる
# Loggable.log('Hello')

# module Loggable
#   class << self
#     def log(text)
#       puts "[LOG] #{text}"
#     end
#     # 以下、ほかの特異メソッドを定義
#   end
# end

# Loggable.log('Hi')


# module Loggable
#   def log(text)
#     puts "[LOG] #{text}"
#   end
#   # logメソッドをミックスインとしても、モジュールの特異メソッドとしても使えるようにする
#   # (module_functionは対象メソッドの定義よりも下で呼び出すこと)
#   module_function :log
# end

# # モジュールの特異メソッドとしてlogメソッドを呼び出す
# Loggable.log('Hello')

# # Loggableモジュールをincludeしたクラスを定義する
# class Product
#   include Loggable

#   def title
#     # includeしたLoggableモジュールのlogメソッドを呼び出す
#     log 'title is called.'
#     'A great movie'
#   end
# end

# # ミックスインとしてlogメソッドを呼び出す
# product = Product.new
# p product.title


# p Math.sqrt(2)
# class Calculator
#   include Math
#   def calc_sqrt(n)
#     # ミックスインとしてMathモジュールのsqrtメソッドを使う
#     sqrt(n)
#   end
# end

# calculator = Calculator.new
# p calculator.calc_sqrt(2)

# p Math::PI
# p Math::E

class Product
  def name
    "A great film"
  end
end

product = Product.new
p product.name

# 既存メソッドを変更するため再オープン
class Product
  # 既存のnameメソッドもname_originという名前で呼び出せるようにしておく
  alias name_origin name
  # nameメソッドの挙動を変える
  def name
    "-#{name_origin}-"
  end
end

p product::name