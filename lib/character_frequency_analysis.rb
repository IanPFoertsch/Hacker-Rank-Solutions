class FrequencyAnalysis
  def read_input
    return STDIN.gets
  end

  def run
    input = read_input.split("\n")
    repeat_times = input.shift

    repeat_times.to_i.times do
      test_case = input.shift

      analyze(test_case)

    end
  end

  def analyze(string)
    if length_is_odd?(string)
      STDOUT.puts("-1")
    else
      first_sorted_chars, second_sorted_chars = split_and_sort(string)
      STDOUT.puts(compare_differences(first_sorted_chars, second_sorted_chars))
    end
  end

  def compare_differences(first_array, second_array)
    num_differences = 0
    for index in 0..first_array.length
      if first_array[index] != second_array[index]
        num_differences += 1
      end
    end
    num_differences
  end

  def length_is_odd?(string)
    return string.length % 2 != 0
  end

  def split_and_sort(string)
    mid_point = (string.length / 2) - 1

    first_half = string[0..mid_point]
    second_half = string[mid_point + 1 .. -1]

    return [first_half.chars.sort, second_half.chars.sort]
  end
end
