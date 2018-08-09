def f1(x : Number)
  x + 1
end

def f2(x : Number)
  {:val1 => x, :val2 => 2*x}
end

def myfact(n : Number)
  if n == 1
    1
  else
    n*myfact(n - 1)
  end
end

def myfact_2(n : Number)
  res = 1
  (1..n).each do |i|
    res = res*i
  end
  res
end

puts "Hello World"
puts f1(4)
res = f2(4)
puts(res)
puts(res[:val1])

puts myfact(4)
puts myfact_2(4)
# puts myfact("dkfdjf") does not work -> type error

lst1 = [1, 2, 3]
puts(lst1)
lst2 = lst1.map { |x| x*x }
puts(lst2)
