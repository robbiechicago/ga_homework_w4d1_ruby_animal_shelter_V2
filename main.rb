require_relative 'shelter'
require_relative 'clients'
require_relative 'animals'

my_shelter = Shelter.new ("RoHo's Centre for Pathetic Creatures")


def menu
  puts `clear`
  puts '*' * 52
  puts "Welcome to RoHo's Centre for Pathetic Creatures".center 50
  puts '*' * 52
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
  when 1
  when 2
  when 3
  when 4
  when 5
  when 6
  response = menu
end
