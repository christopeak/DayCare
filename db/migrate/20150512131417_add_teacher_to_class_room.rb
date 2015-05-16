class AddTeacherToClassRoom < ActiveRecord::Migration
  def change
    add_column :class_rooms, :teacher_first_name, :string
    add_column :class_rooms, :teacher_last_name, :string
  end
end
