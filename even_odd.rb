
require "pry"
class Evenodd 
  def initialize
    @givennumb = [1, 4, 11, 31, 100, 38]
    @usernumb = []
    @evennumb = []
    @oddnumb = []
    main_menu
  end

  def main_menu
    puts "Hello! Check if your numbers are odd or even!"
    puts "Add 1 if you want to check the numbers that we already have"
    puts "Add 2 if you want to quit"
    input = gets.strip.to_i

    case input
      when 1
        even_odd_comp
      when 2
        puts "Goodbye!"
      else
        puts "Invalid input!"
        main_menu
    end
  end


  def even_odd_comp
    @givennumb.each_with_index do |num, i|
      if @givennumb[i] % 2 == 0
        @evennumb << @givennumb[i] 
      else 
        @oddnumb << @givennumb[i] 
      end 
    end
    puts "Even numbers: #{@evennumb.join (', ')}"
    puts "Odd numbers: #{@oddnumb.join (', ')}"
  end
end
Evenodd.new
      
    