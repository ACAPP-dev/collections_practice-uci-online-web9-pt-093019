
def sort_array_asc(array)
  array.sort

end

def sort_array_desc(array)
  array.sort {|a,b| b <=> a}
end

def sort_array_char_count(array)
  array.sort {|a,b| a.length <=> b.length}
end

def swap_elements(array)

  array[1] , array[2] = array[2] , array [1]
  array
end

def swap_elements_from_to(array, index, destination_index)
  array[index] , array[destination_index] = array[destination_index] , array[index]
  array
end

#p array = %w(a b c l q)
#p swap_elements_from_to(array, 2, 3)

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  return_array = []
  array.each do |element|
    element[2] = "$"
    return_array << element
  end
end

def find_a(array)
  array.find_all {|element| element.start_with?("a")}
end

def sum_array(array)
  #array.sum
  #array.inject {|sum, element| sum + element }
  array.reduce(:+)
end

def add_s(array)
  i = 0
  return_array = []
  while i < array.length
    if i == 3
      i +=1
    else
      return_array << array[i] + "s"
      i += 1
    end
  end
  return_array
  #array.map {|element| element+"s"}
end

p add_s(%w(well water wine butter))
