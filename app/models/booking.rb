class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  has_many :reviews, dependent: :destroy

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }

  def fr_status
    case status
    when "pending"
      "pas encore répondu"
    when "declined"
      "refusé"
    when "accepted"
      "accepté"
    end
  end
end
