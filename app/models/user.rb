class User < ApplicationRecord
  has_many :answers
  has_many :questions, through: :answers
  has_many :bookings
  has_many :activities, through: :bookings
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def answers_ids=(ids)
   ids.each do |id|
     answer = Answer.find(id)
     self.answers << answer
    end
  end


end
