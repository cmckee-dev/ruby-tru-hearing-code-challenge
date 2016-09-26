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
        # Adding AM/PM here `times + "pm" if times <= 5:00`

        

        closing = Time.parse('5:00')
        if Time.parse(times) <= closing
          times + "pm"
          
        end


      end
    end
  end

  def team_availability(appt_array, hours)
    # normalize_times(appt_array)

    # Compare elements of two arrays 
    # `array1.zip(array2).map { |x, y| if x == y } => [True, False, True]`
    #
    # Return new array with out duplicate times 
    # available_times = array1 - array2
    # Doesnt like 2d arrays
  end

  def condensed_times()
  end
  
  x = TruHearing.new
  binding.pry
end
