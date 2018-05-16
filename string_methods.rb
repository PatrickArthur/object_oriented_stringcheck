class StringMethods
  protected

  def set_output
    @array = string.gsub(/(\W)/, "").chars
    @output = []
    @hash = Hash.new(0)
  end

  def print_dups
    array.each {|x| hash[x] +=1}
    hash.select{|k,v| v > 1}.each {|k,v| puts "#{k} count is #{v}"}
  end

  def sort_string
    while array.length != 0
      val = array.min
      output << val
      array.delete_at(array.index(val))
    end
    puts "#{string} sorted is #{output.join}"
  end

  def reverse_string
    while array.length != 0
      output << array.last
      array.pop
    end
    puts "#{string} reversed is #{output.join}"
  end
end
