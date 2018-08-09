def fib(n : Number)
  an = 1
  anm1 = 1
  while an < n
    yield an
    temp = anm1
    anm1 = an
    an = an + temp
  end
end

fib(100) do |f|
  puts "Fib = #{f}"
end
