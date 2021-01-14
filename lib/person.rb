# your code goes here

require 'pry'

class Person

    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene 
        # binding.pry
    end 

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def clean?
        self.hygiene > 7 ? true : false 
    end 

    def happy?
        self.happiness > 7 ? true : false 
    end 

    # instance methods to set the floor and ceiling of @happiness and @hygiene

    def happiness=(num)
        @happiness = num
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end  
    end
    
      def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
      end


    def get_paid(bens)
        self.bank_account+= bens
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+= 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness+=2
        self.hygiene-=3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness-= 2
            person.happiness-= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness+= 1
            person.happiness+= 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah" 
        end 
    end 


end 

