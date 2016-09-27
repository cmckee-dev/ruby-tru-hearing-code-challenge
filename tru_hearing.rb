require 'pry'
require 'time'

class TruHearing
  
  hours = [['9:00', '9:30'],
           ['9:30', '10:00'],
           ['10:00', '10:30'],
           ['10:30', '11:00'],
           ['1:00', '1:30'],
           ['1:30', '2:00'],
           ['2:00', '2:30'],
           ['2:30', '3:00'],
           ['3:00', '3:30'],
           ['3:30', '4:00'],
           ['4:00','4:30'],
           ['4:30','5:00']]

  appt_array = [['9:00', '9:30'],
                ['9:00', '11:30'],
                ['10:00', '11:00'],
                ['2:30', '3:00'],
                ['2:30', '3:30']]
      
  def normalize_times(array)
    array[0..array.length].map do |timeslots|
      # binding.pry
      timeslots.map do |times|
        # binding.pry
        # TODO: Adding AM/PM here `times + "pm" if times <= 5:00`

        # FIXME: This block adds pm to the correct times, but returns nil for rest
        # closing = Time.parse('5:00')
        # if Time.parse(times) <= closing
        #   Time.parse(times + "pm")
        # end
      end
    end
  end

  def team_availability(appt_array, hours)

    # Compare elements of two arrays and if duplicate remove from first array
    # hours.zip(appt_array).map { |x, y| (x == y) ? hours - appt_array : y}
    # Returns hours of opperation minus the blocks of time that have appts
    # FIXME: Issue not correctly returning condensed blocks of time

  end

  def condensed_times(condense_arry)

  end
  
  x = TruHearing.new
  binding.pry
end
