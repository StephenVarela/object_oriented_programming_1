class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0.0
    @quota_min = 50
  end

  def name
    return @name
  end

  def experience
    return @experience
  end

  def earnings
    return @earnings
  end

  def experience=(experience)
    @experience = experience
  end

  def earnings=(earnings)
    @earnings = earnings
  end


  def deliver(start_address, end_address)
    deliveries = (end_address - start_address) + 1 #inclusive of start and end addresses
    calculated_earnings = 0


    #adding 25 cents for each paper delivered under quota

    new_quota = quota

    if deliveries < new_quota
      earnings = (@earnings -= 2)

      deliveries.times do
        calculated_earnings += 0.25
      end

    else
      new_quota.times do
        calculated_earnings += 0.25
      end

      if(deliveries > new_quota)
        (deliveries - new_quota).times do
            calculated_earnings += 0.50
        end
      end
    end

    experience = (@experience += deliveries)
    earnings = (@earnings += calculated_earnings)

  end


  def quota
    return @quota_min + (experience/2).round
  end

  def report
    return "Im #{name}, Ive delivered #{experience} and ive earned $#{earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy")

puts tommy.quota # => 50
puts tommy.deliver(101, 160) # => 17.5
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

puts tommy.quota # => 80
puts tommy.deliver(1, 75) # => 16.75
puts tommy.earnings #=> 34.25
puts tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
