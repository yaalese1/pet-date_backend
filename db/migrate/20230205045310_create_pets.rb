class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :age
      t.string :species
      t.string :breed
      t.boolean :open_to_breeding
      t.boolean :alteration
      t.string :mental_disorder
      t.boolean :active
      t.boolean :trained
      t.string :diet
      t.string :size
      t.string :state
      t.string :city
      t.string :zip_code
      t.integer :owner_id
    
      t.timestamps
    end
  end
end
