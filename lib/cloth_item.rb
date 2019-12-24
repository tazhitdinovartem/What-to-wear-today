class ClothItem
  attr_reader :name, :type, :temp_range
  def initialize(name, type, temp_range)
    @name = name
    @type = type
    @temp_range = get_range(temp_range)
  end

  def get_range(temp_range)
    ranges = temp_range.scan(/-?\d+/)
    Range.new(ranges[0].to_i, ranges[1].to_i)
  end

  def suitable?(temp)
    @temp_range.to_a.include?(temp)
  end

  def to_s
    "#{@name} (#{@type}) #{@temp_range}"
  end
end