class CreateUserReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :user_reviews do |t|
      t.integer :star_rating
      t.string :comments
      t.belongs_to :user

      t.timestamps
    end
  end
end
