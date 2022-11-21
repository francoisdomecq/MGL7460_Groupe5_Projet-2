require_relative '../lib/time_from_seconds'

samples = [
  [value = 500, expected = '8 min'],
  [value = 40_000, expected = '11:06'],
  [value = 88_000, expected = '1 day, 26 min'],
  [value = 150_000, expected = '1 day, 17:40'],
  [value = 259_990, expected = '3 days, 13 min'],
  [value = 300_000, expected = '3 days, 11:20']
]

describe TimeFromSeconds do
  describe 'The to_puts function should: ' do
    samples.each do |value, expected|
      it "convert #{value} seconds to: #{expected}" do
        test_object = TimeFromSeconds.new(value)
        expect(test_object.to_puts).to eql(expected)
      end
    end
  end
end
