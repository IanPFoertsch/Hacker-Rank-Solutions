class SaveThePrisoner
  def self.read
    STDIN.gets.strip
  end


  def self.run
    num_test_cases = read.to_i

    num_test_cases.times do |i|
      test_case_info = read.split(" ").map(&:to_i)
      num_prisoners, num_sweets, starting_prisoner = unpack_test_info(test_case_info)

      ending_index = (num_sweets - (num_prisoners - ( starting_prisoner - 1))) % num_prisoners
      ending_index == 0 ? puts(num_prisoners) : puts(ending_index)
    end
  end

  def self.unpack_test_info(test_case_info)
    [
      test_case_info[0],
      test_case_info[1],
      test_case_info[2]
    ]
  end
end

# SaveThePrisoner.run
