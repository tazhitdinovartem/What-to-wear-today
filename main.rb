require_relative "lib/cloth_item"
require_relative "lib/clothes_collection"

files_path = File.dirname(__FILE__) + '/data/*.txt'
files = Dir[files_path]

collection = ClothesCollection.make_collection(files)

puts "Сколько градусов за окном? (можно с минусом)"
user_input = gets.to_i

puts collection.select { |item| item.suitable?(user_input)}

