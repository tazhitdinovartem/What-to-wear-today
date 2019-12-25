class ClothesCollection
  def initialize(collection = [])
    @collection = collection
  end

  def self.make_collection(data)
    data.map do |f|
      cloth_files = File.readlines(f, encoding: "UTF-8", chomp: true)
      ClothItem.new(cloth_files[0], cloth_files[1], cloth_files[2])
    end
  end
  #тут будет метод, который забирает из suitable_collection несколько вещей одного типа
  #возвращает рандомную вещь этого же типа в коллекцию
  def get_types_of_cloths
    @collection
      .map { |item| item.type }
      .uniq
  end

  def get_same_type_cloths
    @suitable_collection.group_by{|item| item.type}
  end

  def generate(temp)
    @suitable_collection = 
      @collection.select { |item| item.suitable?(temp)}
  end
end