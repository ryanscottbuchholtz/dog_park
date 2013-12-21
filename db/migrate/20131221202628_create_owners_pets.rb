class CreateOwnersPets < ActiveRecord::Migration
  def change
    create_table :owners_pets do |t|
      t.integer :owner_id, null: false
      t.integer :pet_id, null: false

      t.timestamps
    end
  end
end
