require "nmax/version"

module Nmax
  def self.get_sequences(input_text, number_of_sequences)
    numbers_array = Array.new

    input_text.each_line do |line|
      numbers_in_line = line.gsub(/[0-9]{1,1000}/)
      numbers_in_line = numbers_in_line.map(&:to_i)
      numbers_array.concat(numbers_in_line)
    end
    
    numbers_array.sort!.reverse!
    numbers_array[0, number_of_sequences]
  end
end
