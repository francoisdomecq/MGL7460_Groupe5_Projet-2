require_relative '../lib/up_time'
require 'stringio'

samples = [
  [value = '../data/test_file1.txt', expected = " up 59 min\n idle 1:24"],
  [value = '../data/test_file2.txt', expected = " up 1 day, 8 min\n idle 1 day, 1:25"],
  [value = '../data/test_file3.txt', expected = " up 2 days, 36 min\n idle 3 days, 11:24"]
]

describe UpTime do
  describe 'The execute function should: ' do
    samples.each do |value, expected|
      it "convert file #{value} in a string equal to: '#{expected}'" do
        test_object = UpTime.new(value)
        output_stream = StringIO.new
        test_object.execute(output_stream)
        output = output_stream.string.split("\n")
        output = "#{output[0][8..]}\n#{output[1][8..]}" # Remove timestamps
        expect(output).to eql(expected)
      end
    end
  end
end
