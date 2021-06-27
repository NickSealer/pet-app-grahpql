class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :color
      t.string :species
      t.belongs_to :user

      t.timestamps
    end
    add_index :pets, :name
  end
end
