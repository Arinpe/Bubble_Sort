def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1

  loop do
    swapped = false
    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end
unsorted_array = [4, 3, 78, 2, 0, 2]
p bubble_sort(unsorted_array)

#bubble-sort-by
def bubble_sort_by(arr)
  go_throught_counter = 0
  loop do
    arr.each_with_index do |n, i|
      break if arr[i + 1].nil?

      diff = yield(n, arr[i + 1])
      if diff.positive?
        arr[i] = arr[i + 1]
        arr[i + 1] = n
      end
    end

    go_throught_counter += 1
    break if arr.length - 1 == go_throught_counter
  end
  p arr
end
bubble_sort_by(%w[hi hello hey]) do |left,right|
  left.length - right.length
end