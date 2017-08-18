
def mergeStrings(a, b)
  a_queue = a.chars
  b_queue = b.chars
  result = ""

  while !a_queue.empty? && !b_queue.empty?
    result += a_queue.shift + b_queue.shift
  end

  remainder = a_queue.empty? ? b_queue : a_queue

  while !remainder.empty?
    result += remainder.shift
  end

  return result
end

#
# def mergeStrings(a, b)
#   characters = Array.new(a.length + b.length)
#
#   for i in 0...a.length
#     characters[i * 2] = a[i]
#   end
#
#   for k in 0...b.length
#     characters[(k * 2) + 1] = b[k]
#   end
#
#   #Remove the leftover 'nil' entries and
#   #convert the array of characters back to a string
#   characters.compact
#   characters.join
# end


#
# def mergeStrings(a, b)
#   result = Array.new(a.length + b.length)
#   a_index = 0
#   b_index = 0
#   result_index = 0
#
#   while result_index < (a.length + b.length)
#     if a_index < a.length
#       result[result_index] = a[a_index]
#       a_index += 1
#       result_index += 1
#     end
#     if b_index < b.length
#       result[result_index] = b[b_index]
#       b_index += 1
#       result_index += 1
#     end
#   end
#
#   #Convert the array of characters back to a string
#   result.join('')
# end
