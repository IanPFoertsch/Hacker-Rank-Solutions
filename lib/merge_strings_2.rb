def mergeStrings(a, b)
   largest_length = [a.length, b.length].max
   smallest_length = [a.length, b.length].min

   result = ""

   smallest_length.times do |index|
     result.insert(-1, a[index])
     result.insert(-1, b[index])
   end


   larger = a.length > b.length ? a : b
   remainder = ""
   if largest_length != smallest_length
     remainder = largest_length - smallest_length
     remainder = larger[smallest_length ..-1]
   end

   result + remainder
end
