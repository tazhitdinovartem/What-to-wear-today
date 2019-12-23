class ClothItem
  attr_reader :name, :type, :temp_range
  def initialize(name, type, temp_range)
    @name = name
    @type = type
    @temp_range = temp_range  
  end

  def suitable?(temp)
    @temp_range.include?(temp)
  end
end