# INTERVIEW QUESTIONS
#Object-Oriented Interview Questions

# Give three different examples of inheritance. Write these class definitions and their inheritance relationships out in Ruby.
	initial, override and super

# What is the difference (in your own words) between a local variable, an instance variable, and class variable.
# What is encapsulation?
# What is a private method?
# What is the difference between a class and an object? What is the difference between a class and an instance?
# What is "duck typing" in Ruby?
# Describe "Polymorphism"

class Animal
	def speak
		puts ''
	end

	def makes_babies
		#do some action
	end
end

class Dog < Animal
	def speak 
		puts 'woof'
	end

	def fetch
		#do some action
	end
end

class Cat< Animal
	
	def speak
		puts 'meow'
	end
 

	def do_nothing
		#do noting
	end

end

# What is a "base class", "sub-class", and "super class"?