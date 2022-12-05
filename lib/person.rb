# your code goes here
class Person 

# bank account can be changed 
    attr_accessor :bank_account
    # description of people can only been seen and not edited 
    attr_reader :name, :happiness, :hygiene

    # creating initial values for given names
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8 
    end

    def happiness=(num)
        # maximum value allowed is 10 
        @happiness = if num > 10 
            10
        # minimum value allowed is 0 
        elsif num > 0 
            0 
        else 
            num
        end
    end

    # sets the value of hygiene points 
    def hygiene=(num)
         # maximum value allowed is 10 
        @hygiene = if num > 10 
             10 
        # minimum value allowed is 0 
        elsif num > 0
            0 
        else 
            num 
        end     
    end  


            #////    ADDITIONAL METHODS    ////

#returns true if persons hygiene is > 7 
    def clean? 
        self.hygiene > 7 
    end

#returns true if persons happiness is > 7 
    def happy? 
        self.happiness > 7 
    end     

    #accepts a salary amount and adds to intial amount and returns string 
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3 
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # def start_conversation(friend, topic) 
    #     @topic = if politics == true 
    #         self.happiness -= 2 
    #         friend.happiness -= 2 
    #         "blah partisan blah lobbyist" 
    #     elsif weather == true
    #         self.happiness += 1
    #         friend.happiness += 1 
    #         "blah blah sun blah rain"
    #     else 
    #         "blah blah blah blah"
    # end    

    def start_conversation(friend, topic)
        case topic 
        when "politics"
            [self, friend],each {|person| person.happiness -= 2 }
            "blah partisan blah lobbyist"
        when "weather"
            [self, friend].each {|person| person.happiness += 1}
            "blah blah sun blah rain"
        else 
            "blah blah blah bah"
    
    end
end 
