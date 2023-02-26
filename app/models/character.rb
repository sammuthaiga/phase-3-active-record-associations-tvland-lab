class Character < ActiveRecord::Base
    belongs_to :show
    belongs_to :actor
    # has_many :characters

    def show
      self.show_id ? Show.find(self.show_id) : nil
    end

   

    def actor
      self.actor_id ? Actor.find(self.actor_id) : nil
    end

    def build_show(name:)
        self.show = Show.create(name: name)
    end


    def show
        self.show_id ? Show.find(self.show_id) : nil
    end

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
  
end