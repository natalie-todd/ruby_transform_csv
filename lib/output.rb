require './transform.rb'

class Output

  def initialize(transform)
    @transform = transform
  end

  def write_output
    @transform.transform_input
  end
end

read = Read.new
transform = Transform.new(read)
output = Output.new(transform)

