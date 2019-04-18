class Activity < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings


    def spec_random
      @@activities = Activity.all.select{|a| a.category==self.category}
      @rand = @@activities.sample
    end
end
