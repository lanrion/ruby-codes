class BinarySearch

  def self.sort(array, search_num)
    length = array.size
    low = 0
    high = length - 1 # 5
    while low <= high
      middle = (low + high) / 2
      puts middle
      if array[middle] == search_num
        return middle
      elsif array[middle] < search_num
        low = middle + 1
      else
        high = middle - 1
      end
    end
    return -1
  end
end

res = BinarySearch.sort([1,2,3,4,5,6], 1)
puts "result: #{res}"

[3,4,5,6]

