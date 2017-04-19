class Person
  attr_reader :count
  attr_accessor :name

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def to_s
    "Name: #{@name}, Age: #{@age}"
  end

  def say_name
    puts "Hi, my name is " + @name + "."
  end

  private

  def old_enough_to_vote?
    old_enough = @age > 17
    old_enough
  end

end

class LoudPerson < Person
  attr_accessor :friend

  def say_name
    puts "HEY YOU, MY NAME IS #{@name.upcase}!"
  end
end

class TwoHeadedPerson < Person
  def initialize(name:, age:, second_name:)
    super(name: name, age: age)
    @second_name = second_name
  end

  def say_name
    "Our names are #{@name} and #{@second_name}."
  end

end


def print_something
  thing = 'something'
  puts thing
end

person = Person.new(age: 32, name: 'Josh')
young_person = Person.new(age: 15, name: 'Bob')

neil = Person.new(name: 'Neil', age: 22)
felicia = LoudPerson.new(name: 'Felicia', age: 22)

puts felicia.say_name
puts neil.say_name

two_headed_person = TwoHeadedPerson.new(name: 'Peter', age: 30, second_name: 'Randy')
puts two_headed_person.say_name