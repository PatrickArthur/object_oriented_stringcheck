require './string_methods'

class PrintStrings < StringMethods
  attr_reader :string, :hash, :array, :output, :methods

  def self.process(string)
    if string.nil? || string.empty?
      puts "string can not be nil or empty"
    else
      new(string).run_methods
    end
  end

  def initialize(string)
    @string = string
    @methods = self.protected_methods - Object.protected_methods
    @methods.delete(:set_output)
  end

  def run_methods
    methods.each do |method|
      set_output
      send(method.to_s)
    end
  end
end

PrintStrings.process("aabbddnxsw")
