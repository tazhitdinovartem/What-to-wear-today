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
  
  def get_uniq_collection(temp)
    @collection
    .select { |item| item.suitable?(temp) }
    .group_by { |item| item.type }
    .map { |key, value|  value.sample }
  end
end
