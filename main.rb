# bubble-sort
def bubble_sort(array)
  return array if array.length <= 1

  array.each_index do |index|
    i = 0
    while i < array.length - 1 - index
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
      i += 1
    end
  end
  array
end
unsorted_array = [4, 3, 78, 2, 0, 2]
p bubble_sort(unsorted_array)

# bubble-sort-by
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
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
