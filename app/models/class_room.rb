class ClassRoom < ActiveRecord::Base
  has_many :children
  has_many :waiting_list_entries
  
  def add_child(child)
  end
  
  def remove_child(child)
  	#remove child from room
  	#add the next child in the wait list
    child.class_room_id = nil
    child.save
  end
  
  def next_child
    waiting_list_entry = WaitingListEntry.joins(:child).where(children: {class_room_id: nil}, waiting_list_entries: {class_room_id: self.id}).first
    if waiting_list_entry
      new_child = Child.find(waiting_list_entry.child_id)
      new_child.class_room_id = self.id
      new_child.save
      waiting_list_entry.destroy
    end
    new_child
  end
end
