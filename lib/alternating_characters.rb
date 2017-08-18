class AlternatingCharacters

  def self.read_input
    STDIN.gets
  end

  def self.process(string)
    if string == ""
      return 0
    else
      self.count_number_deletions(string)
    end
  end

  def self.count_number_deletions(string)
    num_deletions = 0
    (0..string.length - 2 ).each do |index|

      current_char = string[index]
      next_char = string[index + 1 ]

      if current_char == next_char
        num_deletions += 1
      end
    end
    num_deletions
  end

  def self.run
    n = read_input.to_i
    n.times do
      string = read_input
      puts process(string)
    end
  end
end


AlternatingCharacters.run
