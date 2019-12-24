require_relative "lib/cloth_item"
require_relative "lib/clothes_collection"

files_path = File.dirname(__FILE__) + '/data/*.txt'
files = Dir[files_path]

all_types_collection = ClothesCollection.make_collection(files)
collection = ClothesCollection.new(all_types_collection)

p collection.get_types_of_cloths

#puts "Сколько градусов за окном? (можно с минусом)"
#user_input = gets.to_i

#puts collection.select { |item| item.suitable?(user_input)}

