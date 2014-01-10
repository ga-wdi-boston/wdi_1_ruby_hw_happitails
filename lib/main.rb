require 'pry'
require_relative 'data'

class Person
  attr_accessor :name, :age, :number_of_pets, :pets

  def initialize(name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = number_of_pets
    @pets = {}
  end

  def accept_pet # One pet is accepted by the client
    @number_of_pets = @number_of_pets + 1
  end

  def add_pet_to_list(animal_name, animal_instance_name)
    @pets[animal_name] = animal_instance_name
  end

  def give_up_pet # The pet is given up by the client
    @number_of_pets = @number_of_pets - 1
  end

  def remove_pet_from_list(animal_name)
    @pets.delete(animal_name)
  end
end

class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize (name, age, gender, species)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = []
  end
end

test_person = Person.new("Laure", 24, 1,)
test_animal = Animal.new("Joe", 2, "male", "dog")

binding.pry
