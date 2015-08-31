require_relative 'shelter'
require_relative 'clients'
require_relative 'animals'

my_shelter = Shelter.new ("RoHo's Centre for Pathetic Creatures")
new_client = []

def list_humans shelter
  shelter.clients.each_with_index { |client, index| puts "#{index}: name = #{client.name}.  age = #{client.age}. gender = #{client.gender}.  number of pets = #{client.num_pets}."}
end

def list_humans_shorter shelter
  shelter.clients.each_with_index { |client, index| puts "#{index}: name = #{client.name}"}
end

def list_pets shelter
  shelter.clients.each_with_index { |client, index| puts "#{index}: name = #{client.name}.  age = #{client.age}. gender = #{client.gender}.  number of pets = #{client.num_pets}."}
end

def menu
  puts `clear`
  puts '*' * 72
  puts "Welcome to RoHo's Centre for Pathetic Creatures".center 50
  puts '*' * 72
  puts '1: Add a human'
  puts '2: List humans'
  puts '3: Add an animal'
  puts '4: List animals'
  puts '5: Abandon animal'
  puts '6: List abandoned animals'
  puts 'q: Quit'
  print '-->'
  gets.chomp
end

response = menu

until response.downcase == 'q'
  case response
  when '1'
    puts 'Hello human.  What is your name?'
    human_name = gets.chomp

    puts "nice to meet you, #{human_name}.  How old are you, if you don't mind my asking?"
    human_age = gets.to_i

    puts "Goodness, #{human_name}, you don't look a day over #{human_age - 5}. Are you a boy human or a girl human? I can't quite tell. (enter m / f)"
    human_gender = gets.downcase.chomp
    # THE BELOW ERROR HANDLING DOESN'T WORK.  I THINK I KNOW WHY AND MAY TRY TO FIX IT LATER IF I HAVE TIME
    # until human_gender == 'm' || 'f'
    #   puts 'sorry, I don\'t recognise that gender.  m or f please'
    #   human_gender = gets.downcase.chomp
    # end

    puts "one final question, #{human_name}.  How many pets do you have?"
    human_num_of_pets = gets.to_i

    puts human_name
    puts human_age
    puts human_gender
    puts human_num_of_pets
    new_client = Client.new(human_name, human_age, human_gender, human_num_of_pets)
    my_shelter.add_client(new_client)
    gets

  when '2'
    puts "list of humans"
    list_humans(my_shelter)
    gets
  when '3'
    puts 'Which human would you like to add an animal to? (select index number)'
    list_humans_shorter(my_shelter)
    animal_owner = gets.to_i
    
    puts 'type of animal'
    animal_species = gets.chomp

    puts 'animal\'s name'
    animal_name = gets.chomp

    puts 'animal\'s age'
    animal_age = gets.to_i

    puts 'animal\'s gender (m or f)'
    animal_gender = gets.chomp

    puts 'animal\'s favourite toy'
    animal_fav_toy = gets.chomp

    new_animal = Animal.new(animal_name, animal_owner, animal_species, animal_age, animal_gender, animal_fav_toy)
    clients.add_pet(new_animal)
    gets

  when '4'
  when '5'
  when '6'
  end
  response = menu
end


























