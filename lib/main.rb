
require './read.rb'
require './transform.rb'
require './calculate_report.rb'
require './output.rb'
require './report.rb'
require 'csv'

class Main

  def initialize(read, transform, calculate_report, output, report)
    @read = read
    @transform = transform
    @calculate_report = calculate_report
    @output = output
    @report = report
  end

  def transform_file
    @read.read_input
    @transform.transform_input
    @calculate_report.calculate_report
    @output.write_output
    @report.write_report
  end

end

read = Read.new
transform = Transform.new(read)
calculate_report = CalculateReport.new
output = Output.new(transform)
report = Report.new
instance = Main.new(read, transform, calculate_report, output, report)
