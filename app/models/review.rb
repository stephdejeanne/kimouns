class Review < ApplicationRecord
  belongs_to :booking

  def stars
    case self.rating
    when 1
      return "⭐"
    when 2
      return "⭐⭐"
    when 3
      return "⭐⭐⭐"
    when 4
      return "⭐⭐⭐⭐"
    when 5
      return "⭐⭐⭐⭐⭐"
    end
  end
end
