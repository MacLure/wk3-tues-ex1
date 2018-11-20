
class Person

  def initialize(name, emotions)
    @name = name
    @emotions = emotions
  end

  def feels
    @emotions.each do |emotion, value|
      if value == 3
        feeling = "high"
      elsif value == 2
        feeling = "medium"
      elsif value == 1
        feeling = "low"
      end

      puts "I am feeling #{feeling} ammount of #{emotion}"
    end
  end

end

emotions = {
  angry: 1,
  sad: 2,
  anxiety: 3
}
bob = Person.new("bob", emotions)
puts bob.inspect
bob.feels