def bubble_sort(arr)
  array = Array.new(arr)

  (array.length - 1).times do |i|
    (array.length - 1 - i).times do |index|
      array[index], array[index + 1] = array[index + 1], array[index] if array[index] > array[index + 1]
    end
  end
  array
end

def bubble_sort_by(arr)
  array = Array.new(arr)

  (array.length - 1).times do |i|
    (array.length - 1 - i).times do |index|
      array[index], array[index + 1] = array[index + 1], array[index] if (yield array[index], array[index + 1]) >= 1
    end
  end
  array
end
