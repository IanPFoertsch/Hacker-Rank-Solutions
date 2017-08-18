require 'set'

class Gemstones

  def self.read_input
    STDIN.gets.chomp
  end

  def self.load_array
    n = read_input.to_i
    strings = []
    n.times do
      strings += [read_input]
    end

    strings
  end


  def self.run
    strings = load_array
    sets = strings.map do |string|
      Set.new(string.chars.uniq)
    end

    initial = sets[0]

    other_sets = sets[1..-1]

    intersect = other_sets.inject(initial) { |acc, set| acc.intersection(set)}

    intersect.length
  end
end

puts Gemstones.run
