class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :group_id
      t.integer :number_of_guests
      t.timestamps null: false
    end
  end
end
