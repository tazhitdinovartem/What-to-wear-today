class ClothItem
  attr_reader :name, :type, :temp_range
  def initialize(name, type, temp_range)
    @name = name
    @type = type
    @temp_range = get_range(temp_range)  
  end

  def get_range(temp_range)
    ranges = temp_range.scan(/-?\d+/)
    Range.new(ranges[0], ranges[1])
  end

  def suitable?(temp)
    @temp_range.include?(temp)
  end
end