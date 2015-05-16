class CreateClassRooms < ActiveRecord::Migration
  def change
    create_table :class_rooms do |t|
      t.string :name
      t.text :description
      t.integer :max_size
      t.timestamps
    end
  end
end
