def bubble_sort(array)
  array.length.times do
    array.each_with_index do |value, index|
      next unless array[index + 1]
      next if value < array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
    end
  end
  array
end

array = [3, 1, 5, 9, 4, 7, 1, 2, 5, 9, 8]

puts bubble_sort(array)
