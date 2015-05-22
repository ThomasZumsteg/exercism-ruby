require "date"

class Meetup
  # Finds a weekday in a range of dates
  def initialize(month, year)
    @range = {
      first:  [Date.new(year, month,  1), Date.new(year, month,  7),  1],
      second: [Date.new(year, month,  8), Date.new(year, month, 14),  1],
      third:  [Date.new(year, month, 15), Date.new(year, month, 21),  1],
      fourth: [Date.new(year, month, 22), Date.new(year, month, 28),  1],
      last:   [Date.new(year, month, -1), Date.new(year, month, 21), -1],
      teenth: [Date.new(year, month, 13), Date.new(year, month, 19),  1],
    }
  end
  
  def day(weekday, type)
    # Finds a day in a month that matches the type
    start, stop, step = @range[type]
    start.step(stop, step=step).find { |d| d.send(weekday.to_s + "?") }
  end
end