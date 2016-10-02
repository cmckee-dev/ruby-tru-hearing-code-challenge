require 'pry'
require 'time'

class TruHearing

  arg_array = [['9:00', '9:30'],
                ['9:00', '11:30'],
                ['10:00', '11:00'],
                ['2:30', '3:00'],
                ['2:30', '3:30']]

  hours = [['8:30', '9:00'],
           ['9:00', '9:30'],
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

  def normalize_times(array)
    array[0..array.size].map do |timeslots|
      # binding.pry
      timeslots.map do |time|
        # binding.pry
        closing = Time.parse('5:00')
        # binding.pry 
        if Time.parse(time) <= closing
          Time.parse(time + "pm")
        else
          Time.parse(time)
        end
      end
    end
  end

  def team_availability(array)
    # Compare elements of two arrays and if duplicate remove from first array
    hours.zip(appt_array).map { |x, y| (x == y) ? hours - appt_array : x }
    # Returns hours of opperation minus the blocks of time that have appts scheduled
    # FIXME: Issue not correctly returning condensed blocks of time
    # FIXME: Issue with 2d array? If first element doesnt match skipps all other elements
  end

  def condensed_times(array)
  end
  
  x = TruHearing.new
  binding.pry
end
