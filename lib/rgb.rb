# def to_hex(r, g, b)
#   hex = '#'
#   [r, g, b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

def to_hex(r, g, b)
  # ＃が最初に入る
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

#
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   ints = []
#   [r, g, b].each do |n|
#     ints << n.hex
#   end
#   ints
# end

# after
def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  # mapメソッドはブロック内の戻り値を用い新しい配列を作成する .hexでr,g,bの数値を16進数に変換し再度配列に格納する
  [r, g, b].map do |s|
    s.hex
  end
end