array=[4,3,2,7,8,0,0,5,7,8]

def bubble_sort (array)
  i= 0
  while i != array.length-1
    j= i + 1
    while j != array.length
      first_value = array[i]
      second_value = array[j]
      if primer_valor > second_value
        array[i] = second_value
        array[j] = first_value
        i-= 1
        break
      end
      j += 1
    end
    i += 1
  end
  array
end

p bubble_sort(array)
