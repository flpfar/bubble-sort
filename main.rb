def bubble_sort(array)
  unordered_array_size = array.size;
  
  array.size.times do
    ordered = true
    index = 0

    while index < unordered_array_size - 1
      value1 = array[index]
      value2 = array[index + 1]
      if array[index].is_a?String
        value1 = array[index].length
      end
      if array[index + 1].is_a?String
        value2 = array[index + 1].length
      end

      if value1 > value2
        array[index], array[index + 1] = array[index + 1], array[index]
        ordered = false
      end
      index += 1
    end
    
    unordered_array_size -= 1 # the last item will always be ordered
    ordered ? break : next  # if there were no swaps, the array is ordered - finish loop
  end

  return array
end

print bubble_sort([2, 1, -2, "vluea", "a", 64, 23, 11, 4, 44])

