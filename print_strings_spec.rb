require_relative 'print_strings.rb'
require 'pry'

describe PrintStrings do
  it "should return attributes from inputs" do
    print_strings = PrintStrings.new("patrick")
    expect(print_strings.string).to eq "patrick"
    expect(print_strings.methods).to eq [:print_dups, :sort_string, :reverse_string]
  end

  it "should return error messahe when nil" do
    expect do
      PrintStrings.process(nil)
    end.to output("string can not be nil or empty\n").to_stdout
  end

  it "should return error messahe when empty" do
    expect do
      PrintStrings.process("")
    end.to output("string can not be nil or empty\n").to_stdout
  end

  it "should return reverse when read in" do
    expect do
      PrintStrings.process("patrick")
    end.to output("patrick sorted is acikprt\npatrick reversed is kcirtap\n").to_stdout
  end
end

