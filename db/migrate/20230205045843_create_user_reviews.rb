class CreateUserReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :user_reviews do |t|
      # t.belongs_to :user, null: false, foreign_key: true
      t.integer :star_rating
      t.string :comments

      t.timestamps
    end
  end
end
