require_relative 'shelter'
require_relative 'clients'
require_relative 'animals'

my_shelter = Shelter.new ("RoHo's Centre for Pathetic Creatures")
new_client = []

def list_humans shelter
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
  when '4'
  when '5'
  when '6'
  end
  response = menu
end


























