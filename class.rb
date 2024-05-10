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

# class Product
#   DEFAULT_PRICE = 0
#   def self.default_price
#     # クラスメソッドから定数を参照する
#     DEFAULT_PRICE
#   end
  
#   def default_price
#     # インスタンスメソッドから定数を参照する
#     DEFAULT_PRICE
#   end
# end
# Product.default_price

# product = Product.new
# p product.default_price
# class User
# end
# user = User.new
# p user.methods.sort
# p user.class
# userクラスはUserクラスのインスタンスか？
# p user.instance_of?(User)
# userクラスはstringクラスのインスタンスか？
# p user.instance_of?(String)
# instance_of?はクラスが完全に一緒じゃないとtrueにならない。
# p user.instance_of?(Object)

# is_a?はis-a関係にあればtrueになる。
# p user.is_a?(User)
# p user.is_a?(Object)
# p user.is_a?(BasicObject)

# is-a関係に無い場合はfalse
# p user.is_a?(String)

# class Product
#   attr_reader :name, :price

#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
#   def to_s
#     "name: #{name}, price: #{price}"
#   end
# end
# product = Product.new('A great movie', 1000)
# # p product.name
# # p product.price

# # DVDクラスはProductクラスを継承する。
# class DVD < Product
#   attr_reader :running_time
#   def initialize(name, price, running_time)
#     # super(親)クラスのinitializeメソッドを呼び出す(引数の数が同じならsuperのみで呼び出せる)
#     super(name, price)
#     # DVDクラス独自の属性
#     @running_time = running_time
#   end
# end
# dvd = DVD.new('A awesome movie', 1000, 120)
# # p dvd.name
# # p dvd.price
# # p dvd.running_time
# p dvd.to_s
# p dvd.running_time

# class Product
#   DEFAULT_PRICE = 0
  
#   # 定数をprivateにする
#   # private_constant :DEFAULT_PRICE
# end
# p Product::DEFAULT_PRICE
# Product.freeze
# p Product::DEFAULT_PRICE = 5000

# class Product
#   # クラスインスタンス変数
#   @name = 'Product'
#   def self.name
#     # クラスインスタンス変数
#     @name
#   end
#   def initialize(name)
#     # インスタンス変数
#     @name = name
#   end
#   def name
#     # インスタンス変数
#     @name
#   end
# end

# p Product.name

# product = Product.new('A great movie')
# p Product.name
# p product.name

# class Product
#   @@name = 'Product'
#   def self.name
#     @@name
#   end
#   def initialize(name)
#     @@name = name
#   end
#   def name
#     @@name
#   end
# end
# class DVD < Product
#   @@name = 'DVD'
#   def self.name
#     @@name
#   end
#   def upcase_name
#     @@name.upcase
#   end
# end

# # DVDクラスを定義したタイミングで@@nameが"DVD"に変更される
# p Product.name
# p DVD.name

# product = Product.new('A great movie')
# p product.name

# # Product.newのタイミングで@@nameが"A great movie"に変更される
# p Product.name
# p DVD.name

# dvd = DVD.new('An awesome movie')
# p dvd.name
# p dvd.upcase_name

# # DVD.newのタイミングで@@nameが"An awesome film"に変更される
# p product.name
# p Product.name
# p DVD.name

# グローバル変数の宣言と値の代入
# $program_name = 'Awesome program'

# # グローバル変数に依存するクラス
# class Program
#   def initialize(name)
#     $program_name = name
#   end

#   def self.name
#     $program_name
#   end

#   def name
#     $program_name
#   end
# end

# # $program_nameにはすでに名前が代入されている。
# p Program.name

# p program = Program.new('Super program')
# p program.name

# # Program.newのタイミングで$program_nameが"Super program"に変更される
# p Program.name
# p $program_name

# class User
#   def hello
#     'hello'
#   end

#   # helloメソッドのエイリアスメソッドとしてgreetingを定義する
#   alias greeting hello
# end
# user = User.new
# p user.hello
# p user.greeting

# class User
#   # freezeメソッドの定義を削除する
#   undef freeze
# end
# user = User.new
# # freezeメソッドを呼び出すとエラーになる
# user.freeze

# class User
#   class BloodType
#     attr_reader :type
#     def initialize(type)
#       @type = type
#     end
#   end
# end
# blood_type = User::BloodType.new('B')
# p blood_type.type

# class User
#   # =で終わるメソッドを定義する
#   def name=(value)
#     @name = value
#   end
# end
# user = User.new
# # 変数に代入するような形式でname=メソッドを呼び出される
# user.name = 'Alice'
# p user

# class Product
#   attr_reader :code, :name

#   def initialize(code, name)
#     @code = code
#     @name = name
#   end
#   def ==(other)
#     if other.is_a?(Product)
#       # 商品コードが一致すれば同じProductとみなす。
#       code == other.code
#     else
#       # otherがProductでなければ常にfalse
#       false
#     end
#   end
# end

# # aとcが同じ商品コード
# a = Product.new('A-0001','A great movie')
# b = Product.new('B-0001','An awesome file')
# c = Product.new('A-0001','A great movie')

# # ==がこのように動作して欲しい
# p a == b #false
# # ==メソッドを再定義しているのtrue
# p a == c #true
# p a == 1
# p a.== 'a'
# # 左辺にあるのが整数なので、Integerクラスの==が呼び出される
# p 1== a

s