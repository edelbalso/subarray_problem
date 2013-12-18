class Array
  def hello
    'world'
  end

  def max_subarray


    size = self.count
    return [] if size < 1
    start_ptr = 0
    end_ptr = size
    max_subarray_coords = [start_ptr,1]
    max_sum = self[0]

    (start_ptr...end_ptr).each do |i|
      (i...end_ptr).each do |j|
        subarray_sum = self[i...j].sum
        print  "[#{i},#{j}] gives sum #{subarray_sum}..."
        if subarray_sum != nil && subarray_sum > max_sum
          puts "Winner!"
          max_sum = subarray_sum
          max_subarray_coords = [i,j]
        else
          puts
        end
      end
    end

    self[max_subarray_coords[0]...max_subarray_coords[1]]

  end

  def sum
    self.inject{|sum,x| sum + x }
  end
end