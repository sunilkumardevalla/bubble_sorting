def bubble_sort(array)
  array.length.times do
    array.each_with_index do |item, index|
      next unless array[index + 1]
      next if item < array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
    end
  end
  array
end

array = [3, 1, 5, 9, 4, 7, 1, 2, 5, 9, 8]

puts bubble_sort(array)

def bubble_sort_by(array)
  puts array if array.length <= 1
  n = array.length - 1
  swapped = true
  while swapped
    swapped = false
    n.times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
  array
end

puts bubble_sort_by(%w[Sunil Sunny hey hi hello]) { |left, right| left.length - right.length }
