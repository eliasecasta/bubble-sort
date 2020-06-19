array = %w[hi hello hey]
array2 = [0, 2, 2, 3, 4, 78]

def bubble_sort(array)
  (array.length - 1).times do |i|
    (array.length - 1 - i).times do |index|
      array[index], array[index + 1] = array[index + 1], array[index] if array[index] > array[index + 1]
    end
  end
  array
end

def bubble_sort_by(array)
  (array.length - 1).times do |i|
    (array.length - 1 - i).times do |index|
      array[index], array[index + 1] = array[index + 1], array[index] if (yield array[index], array[index + 1]) >= 1
    end
  end
  array
end

bubble_sort(array2)

bubble_sort_by(array) do |left, right|
  left.length - right.length
end
