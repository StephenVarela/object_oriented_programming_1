class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def gold_coins
    return @gold_coins
  end

  def health_points
    return @health_points
  end

  def lives
    return @lives
  end

  def gold_coins=(gold_coins)
    @gold_coins = gold_coins
  end

  def health_points=(health_points)
    @health_points = health_points
  end

  def lives=(lives)
    @lives = lives
  end

  def player_status
    return "Health Points: #{health_points}, Lives: #{lives}, gold coins: #{gold_coins}"
  end

  def level_up
    lives=(@lives += 1);
  end

  def collect_treasure
    gold_coins=(@gold_coins += 1)
    if(@gold_coins % 10 == 0)
      level_up
    end
  end

  def do_battle(damage)
    health_points=(@health_points -= damage)
    if @health_points < 1
      restart
    end
  end

  def restart
    puts "You died :( restarting game"
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

end


stephen = Player.new
puts stephen.player_status

puts "----Leveling Up----"
stephen.level_up
puts stephen.player_status


puts "----Collecting Treasure----"
stephen.collect_treasure
puts stephen.player_status

puts "-----FIGHT!------------"
stephen.do_battle(5)
puts stephen.player_status

puts "-----FIGHT Again!------------"
stephen.do_battle(5)
puts stephen.player_status
