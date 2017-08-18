
class BinaryString

  RUN_ON = /10/
  SEQUENCE = /010/

  def self.read_input
    n = STDIN.gets.strip.to_i
    STDIN.gets.strip
  end

  def self.process
    string = read_input

    working_copy = string
    number_of_operations_required = 0
    while(contains_sequence(working_copy))
      add_me_to_operations, remainder = process_chunk(working_copy)
      number_of_operations_required += add_me_to_operations
      working_copy = remainder
    end

    return number_of_operations_required
  end

  def self.run_on?(string)
    #returns the index at which this matches... if it is 0, we have a run on
    index = string =~ /^10.*/
    index == 0
  end

  def self.contains_sequence(string)
    return !string.index(SEQUENCE).nil?
  end


  def self.process_chunk(string)

    chunk, remainder = self.split(string, SEQUENCE)

    #process the remainder to detect run-ons
    if self.run_on?(remainder)
      run_on_string, remainder = self.extract_run_on(remainder)
      chunk = chunk + run_on_string
    end


    return [((chunk.length) / 5.0).ceil, remainder]
  end


  def self.split(string, regex)
    first_index = string.index(regex)
    take_number_of_characters = regex == SEQUENCE ? 3 : 2
    part1 = string.slice(first_index, take_number_of_characters)
    part2 = string.slice(first_index + take_number_of_characters, string.length - 1)

    [part1, part2]
  end

  def self.extract_run_on(string)
    remainder = string
    run_on_string = ""

    while self.run_on?(remainder)
      single_run_on, remainder = self.split(remainder, RUN_ON)
      run_on_string = run_on_string + single_run_on
    end

    [run_on_string, remainder]
  end
end

puts BinaryString.process
