class Personv1
  property name : String, age : Int32

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s(io) # see https://github.com/crystal-lang/crystal/issues/259
    io << "Hello Personv1, named " << @name << ", aged " << @age
  end

  # def +(n : Int32) # operator changing the instance in-place
  #  @age += n
  # end

  def +(n : Int32)
    Personv1.new(@name, @age + n)
  end
end

mc1 = Personv1.new("Clemens", 34)
puts mc1 # the nice printout requires the to_s method to be overwritten

# mc1 + 10
# puts mc1

mc2 = mc1 + 10
puts mc2

# puts mc1.name # this requires the attr_reader
# puts mc1.age
# mc1.age = 12 # this requires the attr_accessor
# puts mc1
