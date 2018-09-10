class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
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

  def quota

  end

  def deliver(start_address, end_address)

  end

  def report
    return "Im #{name}, Ive delivered #{experience} and ive earned $#{earnings} so far!"
  end



end
