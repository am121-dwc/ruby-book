def fizz_buzz(n)
  if n % 15 == 0
    'fizz_buzz'
  elsif n % 3 == 0
    'fizz'
  elsif n % 5 == 0
    'buzz'
  else
    n.to_s
  end
end