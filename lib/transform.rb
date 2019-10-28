require './read.rb'

class Transform

  def initialize(read)
    @read = read
  end

  def transform_input
    @read.read_input
  end
end

read = Read.new
transform = Transform.new(read)
