class CreatePetReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_reviews do |t|
      t.belongs_to :pet, null: false, foreign_key: true
      t.integer :star_rating
      t.string :comments

      t.timestamps
    end
  end
end
