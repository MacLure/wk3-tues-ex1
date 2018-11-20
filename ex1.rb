
class Person

    def initialize(name, emotions)
        @name = name
        @emotions = emotions
    end

    def name
        return @name
    end

    def emotions
        return @emotions
    end

## -- My solution:

    def emotion_describer(emotion)
        if @emotions[emotion] == 3
            return "high"
        elsif @emotions[emotion] == 2
            return "moderate"
        elsif @emotions[emotion] == 1
            return "low"
        else
            return "not certain"
        end
    end
            
    def sentence_builder(emotion)
        return "I am feeling a #{emotion_describer(emotion)} ammount of #{emotion}."
    end

    def show_my_emotions
        for emotion in @emotions
            puts sentence_builder(emotion[0])
        end
    end


## -- My solution: Gabby's solution:

    def show_feelings
        @emotions.each do |key, value|
            if value == 3
                feeling = "high"
            elsif value == 2
                feeling = "moderate"
            elsif value == 1
                feeling = "low"
            else
                feeling = "not certain"
            end
            puts "I'm feeling a #{feeling} ammount of #{key}."

        end

    end




end

me = Person.new("Me", {happiness: 3, sleepiness: 2})
you = Person.new("You", {happiness: 2, sadness: 3, angriness: 1})

puts me.show_my_emotions
