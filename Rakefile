# タスクの説明を入れる
# desc 'テスト用のタスクです'
# task :hello_world do
#   puts 'Hello, world'
# end
# 名前空間を使ってタスクをグループ分けする
# namespace :my_tasks do
#   desc 'テスト用のタスクです。'
#   task :hello_world do
#     puts 'Hello, world!'
#   end
# end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'test/**/*_test.rb'
end

task default: :test