def bubble_sort(array)
  unordered_array_size = array.size
  array.size.times do
    ordered = true
    index = 0
    while index < unordered_array_size - 1
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        ordered = false
      end
      index += 1
    end
    unordered_array_size -= 1 # the last item will always be ordered
    ordered ? break : next # if there were no swaps, the array is ordered - finish loop
  end
  array
end

def bubble_sort_by(array)
  unordered_array_size = array.size
  array.size.times do
    ordered = true
    index = 0
    while index < unordered_array_size - 1
      if yield(array[index], array[index + 1]).positive?
        array[index], array[index + 1] = array[index + 1], array[index]
        ordered = false
      end
      index += 1
    end
    unordered_array_size -= 1 # the last item will always be ordered
    ordered ? break : next # if there were no swaps, the array is ordered - finish loop
  end
  array
end
