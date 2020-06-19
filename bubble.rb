array=[4,3,2,7,8,10,2,1,0,5,20,28,69]

def bubble_sort (array)
  i= 0
  unless i == array.length-1
    j = i + 1
    until j == array.length
      first_value = array[i]
      second_value = array[j]
      if first_value > second_value
        array[i] = second_value
        array[j] = first_value
        i -= 1
        break
      end
      j += 1
    end
    i += 1
  end
  array
end

p bubble_sort(array)
