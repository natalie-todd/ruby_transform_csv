
require 'csv'
require './transform.rb'

class Output

  def initialize(transform)
    @transform = transform
  end

  def write_output
    CSV.open("../output.csv", "w") do |csv|
      @transform.transform_input.by_row.each do |row|
        csv << [row]
      end
    end
  end
end

reader = Read.new
transformer = Transform.new(reader)
output = Output.new(transformer)
