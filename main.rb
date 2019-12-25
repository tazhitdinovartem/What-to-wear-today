require_relative "lib/cloth_item"
require_relative "lib/clothes_collection"

files_path = File.dirname(__FILE__) + '/data/*.txt'
files = Dir[files_path]

all_types_collection = ClothesCollection.make_collection(files)
collection = ClothesCollection.new(all_types_collection)

puts "Сколько градусов за окном? (можно с минусом)"
user_input = gets.to_i
puts
puts "Предлагаем сегодня надеть:"
puts
collection = collection.get_uniq_collection(user_input)

if collection.empty?
  puts "К сожалению, у вас нет подходящей одежды"
else 
  puts collection
end
