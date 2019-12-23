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
end