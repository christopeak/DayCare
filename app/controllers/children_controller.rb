class ChildrenController < ApplicationController

  def remove_from_class_room
    @child = Child.find (params[:id])
    class_id = @child.class_room_id
    @child.leave_class_room
    waiting_list_entry = WaitingListEntry.find_by class_room_id: (class_id)
    @new_child = Child.find(waiting_list_entry.child_id)
    @new_child.class_room_id = class_id
    @new_child.save
    waiting_list_entry.destroy
    redirect_to(action: 'show', controller: 'class_rooms', id: class_id)
  end

end
