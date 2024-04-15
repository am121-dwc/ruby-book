def cost(age)
  case age
  # 0~5
  when 0..5
    0
  # 6~12
  when 6..12
  # 13~18
    300
  when 13..18
    600
  # adult
  else
    1000
  end
end
p cost(3)
p cost(12)
p cost(16)
p cost(25)