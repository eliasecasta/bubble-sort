array = %w[h44 he fgh jshkdal s sds]
array2=[4,3,2,7,8,10,2,1,0,5,20,28,69]

def bubble_sort(array)
    (array.length-1).times do |i|
        (array.length-1-i).times do |index|
            if array[index] > array[index+1]
                array[index], array[index+1]=array[index+1],array[index]
            end
        end
    end
    array
end

def bubblue_sort_by(array)
  (array.length - 1).times do |i|
    (array.length - 1 - i).times do |index|
      if (yield array[index], array[index + 1]) >= 1
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end
  array
end

x = bubblue_sort_by(array) do |left, right|
  left.length - right.length
end

p bubble_sort(array2)
p x