class Animal

  # attr_reader 
  attr_accessor :name, :owner, :species, :age, :gender, :fav_toys

  def initialize (name, owner, species, age, gender, fav_toys)
    @name = name
    @owner = owner
    @species = species
    @age = age
    @gender = gender
    @fav_toys = fav_toys
  end


end