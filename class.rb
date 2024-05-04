# users = []
# users << {first_name: 'Alice', last_name: 'Ruby', age: 20 }
# users << {first_name: 'Bob', last_name: 'Python', age: 30 }
# # p users
# # users.each do |user|
# #   puts "氏名: #{user[:first_name]} #{user[:last_name]}、 年齢: #{user[:age]}"
# # end

# def full_name(user)
#   "#{user[:first_name]} #{user[:last_name]}"
# end

# users.each do |user|
#   puts "氏名: #{full_name(user)}、 年齢: #{user[:age]}"
# end
# class User
#   attr_reader :first_name, :last_name, :age

#   def initialize(first_name, last_name, age)
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#   end
# end

# ユーザーデータの作成
# users = []
# users << {first_name: 'Alice', last_name: 'Ruby', age: 20 }
# users << {first_name: 'Bob', last_name: 'Python', age: 30 }

# 氏名を変更するメソッド
# def full_name(user)
#   "#{user.first_name} #{user.last_name}"
# end
# ユーザーのデータを表示する
# users.each do |user|
#   puts "氏名: #{full_name(user)}、 年齢: #{user.age}"
# end

# class User
#   def initialize
#     puts 'initialized.'
#   end
# end
# User.new

# class User
#   def initialize(name, age)
#     puts "name: #{name}, age:#{age}"
#   end
# end
# User.new('Alice','20')

# class User
#   def hello
#     "Hello"\
#     "Hi"
#   end
# end
# user = User.new
# p user.hello

# class User
#   # インスタンス作成時に渡された名前をインスタンス変数に保存する
#   def initialize(name)
#     @name = name
#   end
#   def hello
#     # インスタンスに保存されている名前を表示する
#     "Hellom I am #{@name}."
#   end
# end
# user = User.new('Alice')
# user.hello

# class Product
#   # デフォルトの価格を定数として定義する
#   DEFAULT_PRICE = 0

#   attr_reader :name, :price
#   def initialize(name, price = DEFAULT_PRICE)
#     @name = name
#     @price = price
#   end
# end

# product = Product.new('A free movie')
# p product.price

class Product
  DEFAULT_PRICE = 0
  def self.default_price
    # クラスメソッドから定数を参照する
    DEFAULT_PRICE
  end
  
  def default_price
    # インスタンスメソッドから定数を参照する
    DEFAULT_PRICE
  end
end
Product.default_price

product = Product.new
p product.default_price

