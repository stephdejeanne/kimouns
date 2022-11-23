class Offer < ApplicationRecord
  belongs_to :user

  def image_url
    case category
    when "jardinage"
      "https://www.paysagiste.info/wp-content/uploads/2017/04/se-lancer-en-jardinage-768x0-c-default.jpg"
    when "bricolage"
      "https://www.viepratique.fr/wp-content/uploads/sites/4/2019/04/bricolage-et-diy-quels-outils-avoir-chez-soi.jpg"
    when "cuisine"
      "http://img.over-blog-kiwi.com/0/93/18/18/20160717/ob_634167_colombo0070.JPG"
    else
      "https://upload.wikimedia.org/wikipedia/commons/e/e6/Pas_d%27image_disponible.svg"
    end
  end
end
