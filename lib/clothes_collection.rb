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

  def get_types_of_cloths
    @collection
      .map { |item| item.type }
      .uniq
  end

  def get_same_type_cloths

  end

  def generate(temp)
    @collection.select { |item| item.suitable?(temp)}
  end
end