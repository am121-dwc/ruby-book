# # ここではトップレベル
# p self
# p self.class

# class User
#   # ここはクラスの内部
#   p self
#   p self.class
# end

# class User
# end

# # Userクラス自身のクラスはclassクラス
# p User.class

# # ClassクラスのスーパークラスはModuleクラス
# p Class.superclass

# module Loggable
# end

# # Loggableモジュール自身のクラスはModuleクラス
# p Loggable.class

# # ModuleクラスのスーパークラスはObjectクラス
# p Module.superclass

# module NameChanger
#   def change_name
#     # include先のクラスのインスタンス変数を変更する
#     @name = "ありす"
#   end
# end

# class User
#   include NameChanger
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
# end

# user = User.new('alice')
# p user.name

# # モジュールで定義したメソッドでインスタンス変数を書き換える
# user.change_name
# p user.name

# module NameChanger
#   def change_name
#     # セッターメソッド経由でデータを変更する
#     self.name = "ありす"
#   end
# end
# class User
#   include NameChanger

#   # ゲッターメソッドとセッターメソッドを用意する
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# # Userクラスの使い方は先ほどと同じ
# user = User.new('alice')
# p user.name
# user.change_name
# p user.name

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

s = 'abc'

# 文字列は通常logメソッドを持たない
# s.log('Hello.')

# 文字列sにLoggableモジュールのメソッドを特異メソッドとしてミックスインする
s.extend(Loggable)

# Loggableモジュールのlogメソッドが呼び出せるようになる
s.log('Hello')