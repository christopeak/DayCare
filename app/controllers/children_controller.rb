class ChildrenController < ApplicationController

  def remove_from_class_room
    @child = Child.find (params[:id])
    #@child = Child.where(id: params[:id], class_room_id: nil)
    class_id = @child.class_room_id
    @child.leave_class_room
    #waiting_list_entry = WaitingListEntry.find_by class_room_id: (class_id)
    waiting_list_entry = WaitingListEntry.joins(:child).where(children: {class_room_id: nil}).first
    if waiting_list_entry
      @new_child = Child.find(waiting_list_entry.child_id)
      @new_child.class_room_id = class_id
      @new_child.save
      waiting_list_entry.destroy
      flash[:child_id] = @new_child.id
    end
    redirect_to(action: 'show', controller: 'class_rooms', id: class_id)
  end

end
