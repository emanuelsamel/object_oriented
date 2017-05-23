class Paperboy

  attr_reader :earnings
  attr_accessor :name, :experience

 def initialize(name)
   @name = name
   @experience = 0
   @earnings = 0
 end

 def quota

   quota = @experience / 2 + 50
 end

 def deliver(start_address, end_address)

   houses_total = end_address - start_address + 1
   today_earnings = 0
   if houses_total < quota
     today_earnings = 0.25 * houses_total - 2
   elsif
     today_earnings = 0.25 * quota + 0.5 * (houses_total - quota)
   end
   @experience += houses_total
   @earnings += today_earnings
   return today_earnings

  end

  def report
  "I'm #{@name}, I've delivered #{@experience} and I've earned $#{@earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy")

puts tommy.quota
puts tommy.deliver(101, 160)
puts tommy.earnings
puts tommy.report

puts tommy.quota
puts tommy.deliver(1, 75)
puts tommy.earnings
puts tommy.report
