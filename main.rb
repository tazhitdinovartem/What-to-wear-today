require_relative "lib/cloth_item"
require_relative "lib/clothes_collection"

files_path = File.dirname(__FILE__) + '/data/*.txt'
files = Dir[files_path]

all_types_collection = ClothesCollection.make_collection(files)
collection = ClothesCollection.new(all_types_collection)

puts "Сколько градусов за окном? (можно с минусом)"
user_input = gets.to_i

collection.generate(user_input)
#проверить, работает ли
collection.get_same_type_cloths.each do |key, value|
  p value.sample
end