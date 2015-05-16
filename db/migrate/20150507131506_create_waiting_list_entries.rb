class CreateWaitingListEntries < ActiveRecord::Migration
  def change
    create_table :waiting_list_entries do |t|
      t.integer :class_id
      t.integer :child_id
      t.timestamps
    end
  end
end
