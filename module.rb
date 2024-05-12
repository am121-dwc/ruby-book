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

class Team
  extend DeepFreezable
  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end

# 配列自身と配列の全要素がfreezeされている
p Team::COUNTRIES.frozen?
p Team::all?{ |country| country.frozen? }

class Bank
  extend DeepFreezable
  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end
# ハッシュ自身とハッシュの全要素(キーと値)がfreezeされている
p Bank::CURRENCIES.freeze?
p Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }

module DeepFreezable
  def deep_freeze(array_or_hash)
    # 
  end
end

