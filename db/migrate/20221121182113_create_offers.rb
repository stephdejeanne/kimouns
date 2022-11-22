class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :category
      t.string :description
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
