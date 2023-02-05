class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :lender
      t.string :email
      t.string :password_digest
      t.string :age
      t.string :address
      t.boolean :seeking_relationship 


      t.timestamps
    end
  end
end
