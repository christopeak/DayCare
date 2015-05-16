class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.integer :class_id
      t.string :parent_first_name
      t.string :parent_last_name
      t.string :phone
      t.string :email_address
      t.timestamps
    end
  end
end
