# Class to convert seconds to days, hours and minutes
class TimeFromSeconds
  def initialize(seconds)
    @seconds = seconds
    @days = from_seconds_to_days
    @hours = from_seconds_to_hours
    @minutes = from_seconds_to_minutes
  end

  def to_puts
    to_puts = ''
    if @days.positive?
      to_puts << "#{@days} day#{@days > 1 ? 's' : ''}#{@hours.positive? || @minutes.positive? ? ', ' : ''}"
    end
    to_puts << if @hours.positive?
                 "#{@hours}:#{@minutes < 10 ? '0' : ''}#{@minutes}"
               else
                 "#{@minutes} min"
               end
    to_puts
  end

  private

  DAY = 86_400
  HOUR = 3600
  MINUTE = 60

  def from_seconds_to_days
    (@seconds / DAY).floor
  end

  def from_seconds_to_hours
    ((@seconds % DAY) / HOUR).floor
  end

  def from_seconds_to_minutes
    ((@seconds % DAY) % HOUR / MINUTE).floor
  end
end
