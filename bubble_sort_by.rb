def bubble_sort_by(array)
  return array if array.length <= 1
  swapped = true
  while swapped
    swap = false
    (array.length - 1).times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
  array
end

p bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}

