# PHASE 2
def convert_to_int(str)
  begin
    unless str.is_a?(String) && (str.to_i != 0 || str == '0')
      raise ArgumentError.new("#{str} is not a number. Argument must be a number")
    end
  rescue ArgumentError => e
    puts e.message
  end
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise IOError.new("#{maybe_fruit} is not a valid type of fruit")
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"

    maybe_fruit = gets.chomp

    reaction(maybe_fruit)
  rescue IOError => e
    puts e.message
    retry
  end
end

# PHASE 4
class BestFriend

  def initialize(name, yrs_known, fav_pastime)
    raise ArgumentError.new('You need to enter something for name AND favorite passtime.') if name.empty? || fav_pastime.empty?
    raise NotImplementedError.new("You can't be best friends if you haven't known them 5 years.") if yrs_known < 5
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime

  end


  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
