class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :about_me
      t.string :pronouns
      t.boolean :seeking_relationship

      t.timestamps
    end
  end
end
