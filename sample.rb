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


text = <<-TEXT
John:guitar, George:guitar, Paul:bass, Ringo:drum
Freddie:vocal, Brian:guitar, John:bass, Roger:drum
TEXT
puts text.scan(/\w+(?=:bass)/)