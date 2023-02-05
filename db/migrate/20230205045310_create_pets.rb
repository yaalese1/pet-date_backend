class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      # t.belongs_to :user, null: false, foreign_key: true
      t.string :age
      t.string :species
      t.string :breed
      t.boolean :open_to_breeding
      t.boolean :neuter
      t.string :mental_disorder
      t.boolean :active
      t.boolean :trained
      t.string :diet
     

      t.timestamps
    end
  end
end
