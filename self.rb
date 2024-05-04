# class User
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
#   def hello
#     # selfなしでnameメソッドを呼ぶ
#     "Hello, I am #{name}."
#   end
#   def hi
#     # self付きでnameメソッドを呼ぶ
#     "Hi, I am #{self.name}."
#   end

#   def my_name
#     # 直接インスタンス変数の@nameにアクセスする
#     "My name is #{@name}."
#   end
# end
# user = User.new('Alice')
# p user.hello
# p user.hi
# p user.my_name

# class Foo
#   # このputsはクラス定義の読み込み時に呼び出される
#   puts "クラス構文の直下のself: #{self}"

#   def self.bar
#     puts "クラスメソッド内のself: #{self}"
#   end
#   def baz
#     puts "インスタンスメソッド内のself: #{self}"
#   end
# end
# # クラス構文直下のself: Foo

# foo = Foo.new
# foo.baz

# class Product
#   attr_reader :name, :price

#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
  
#   # 金額を調整するクラスメソッド
#   def self.format_price(price)
#     "#{price}円"
#   end

#   def to_s
#     # インスタンスメソッドからクラスメソッドを呼び出す
#     formatted_price = Product.format_price(price)
#     "name: #{name}, price: #{formatted_price}"
#   end
# end

# product = Product.new('A great movie', 1000)
# p product.to_s

