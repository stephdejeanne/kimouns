class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  has_many :reviews, dependent: :destroy
  # validates :start_time, presence: { strict: true }
  # validates :end_time, presence: { strict: true }
  def accepted_status
    case accepted
    when "in-progress"
      "pas encore répondu"
    when "not-accepted"
      "refusé"
    when "accepted"
      "accepté"
    end
  end
end
