require 'pry'
require 'time'

class TruHearing

  def initialize(appointment_array)
    @apt_array = self.normalize_times(appointment_array)
    
    @schedule = self.normalize_times(
                [ ['8:30', '9:00'],
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
                  ['4:30','5:00'] ])

    @open = Time.parse('8:30am')
    @close = Time.parse('5:00pm')
    @lunch = Time.parse('12:00pm')
  end

  def team_avail(array)
    # normalize_times method works in pry, but when called in this method
    # =>  NoMethodError: undefined method `length fo nil:NilClass
    #     from tru_hearing.rb:49:in `normalize_times`
          # SOLVED: self.normalize was defined while varaible was on the instance   

    # Running into issues with zip
    # =>  TypeError: wrong argument type NilClass (must respond to :each)
    #     from tru_hearing.rb:35:in `zip'
    # Think the issue lies with nil elements on @apts_array side after zip

    @schedule.zip(array).map! do |s, a|
      if s == a
        @schedule - array
      elsif s[0].between?(a[0] && a[1]) == true
        @schedule - s
      elsif a == nil
        @schedule - array
      else
        x
      end
    end
  end

  # private
 
  def normalize_times(array)
    array[0..array.length].map do |timeslots|
    # binding.pry
      timeslots.map do |time|
      # binding.pry
        
        # Instead of parsing in the if conditional block here, use regex to match text
        # time == /1..5/':00'
        if Time.parse(time) <= Time.parse('5:00')
          Time.parse(time + "pm").strftime('%I:%M %p')
        else
          Time.parse(time).strftime('%I:%M %p')
        end
      end
    end
  end

  def condense_times(array)
    # t = Time.parse('9:00')
    # t.between?(open, close) => false
          #
          # Loop through each |timeslot| |time| and compare
          # IF |timeslot| elements dont match counterparts, figure out what the difference is
          #
          # handle nil cases
          #
          #schedule.zip(apts).map {|x, y| ....}
          # IF x.bewteen?(y[0] && y[1]
          #
          # schedule[0][0].between?(apts[0][0], apts[0][1]) => false
  end

  def is_lunch?
  end

  arg_array = [ ['9:00', '9:30'],
                ['9:00', '11:30'],
                ['10:00', '11:00'],
                ['2:30', '3:00'],
                ['2:30', '3:30']  ]

  tru = TruHearing.new(arg_array)
  binding.pry
end
