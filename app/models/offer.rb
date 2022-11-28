class Offer < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  def image_url
    case category
    when "Jardinage"
      "https://www.paysagiste.info/wp-content/uploads/2017/04/se-lancer-en-jardinage-768x0-c-default.jpg"
    when "Bricolage"
      "https://www.viepratique.fr/wp-content/uploads/sites/4/2019/04/bricolage-et-diy-quels-outils-avoir-chez-soi.jpg"
    when "Cuisine"
      "http://img.over-blog-kiwi.com/0/93/18/18/20160717/ob_634167_colombo0070.JPG"
    when "Informatique"
      "https://images.unsplash.com/photo-1633356122544-f134324a6cee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVsbCUyMHN0YWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
    when "Sport"
      "https://images.unsplash.com/photo-1556817411-31ae72fa3ea0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNwb3J0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
    else
      "https://upload.wikimedia.org/wikipedia/commons/e/e6/Pas_d%27image_disponible.svg"
    end
  end
end
