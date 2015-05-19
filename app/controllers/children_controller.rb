class ChildrenController < ApplicationController

  def remove_from_class_room
    @child = Child.find (params[:id])
    class_room = @child.class_room
    @child.leave_class_room
    new_child = class_room.next_child
    flash[:child_id] = new_child.id if new_child
    redirect_to(action: 'show', controller: 'class_rooms', id: class_room.id)
  end

end
