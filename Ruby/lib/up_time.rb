require_relative 'time_from_seconds'

# Class to execute uptime function
class UpTime
  def initialize(file_name = '../data/uptime_file.txt')
    @file_name = File.expand_path(file_name, __dir__)
    values_from_file = read_from_file
    @up_time = TimeFromSeconds.new(values_from_file[0].to_i)
    @idle_time = TimeFromSeconds.new(values_from_file[1].to_i)
  end

  def execute(output = $stdout)
    output.puts "#{Time.now.strftime('%H:%M:%S')} up #{@up_time.to_puts}"
    output.puts "#{Time.now.strftime('%H:%M:%S')} idle #{@idle_time.to_puts}"
  end

  private

  def read_from_file
    File.read(@file_name).split
  end
end
