class Client

  # attr_reader 
  attr_accessor :name, :age, :gender, :num_pets
  # attr_accessor :client_info


  def initialize (name, age, gender, num_pets)
    @name = name
    @age = age
    @gender = gender
    @num_pets = num_pets
    # @client_info = {}
  end


end