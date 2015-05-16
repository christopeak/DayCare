class RenameClassIdColumn < ActiveRecord::Migration
  def change
    rename_column :children, :class_id, :class_room_id
    rename_column :waiting_list_entries, :class_id, :class_room_id
  end
end
