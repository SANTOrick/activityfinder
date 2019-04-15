class User < ApplicationRecord
  has_many :answers
  has_many :questions, through: :answers
  has_many :bookings
  has_many :activities, through: :bookings

  validates: :name, presence: true, uniquiness: true
  validates: :email, presence: true, uniquiness: true, inclusion: { in: @, message: "Need a @ you fuck head " }
  validates: :password, presence: true

  def answers_ids=(ids)
   ids.each do |id|
     answer = Answer.find(id)
     self.answers << answer
    end
  end

end
