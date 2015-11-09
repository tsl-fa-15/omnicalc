class Stat
  def initialize(space_separated_list_of_numbers)

    @numbers = space_separated_list_of_numbers || ""
    @numbers = @numbers
                .gsub(',', '')
                .split
                .map(&:to_f)
  end

  def get_numbers
    return @numbers
  end

  def min
    return get_numbers.min
  end

  def max
    return get_numbers.max
  end

  def range
    return max - min
  end

  def sorted_numbers
    return get_numbers.sort
  end

  def length
    return get_numbers.count
  end

  def median
    (sorted_numbers[length/2] + sorted_numbers[(length-1)/2])/2
  end

  def sum
    sum = 0
    # go through each array item and add it to the accumulator
    get_numbers.each { |num| sum = sum + num }
    return sum
  end

  def mean
    return sum/length.to_f
  end

  def variance
    squared_differences = []
    get_numbers.each do |num|
        squared_differences << (num - mean)**2
    end
    variance = 0
    squared_differences.each do |num|
        variance = variance + num
    end
    return variance/length
  end

  def standard_dev
    Math.sqrt(variance)
  end

end







