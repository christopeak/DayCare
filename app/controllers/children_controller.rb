class ChildrenController < ApplicationController

  def remove_from_class_room
    @child = Child.find (params[:id])
    class_id = @child.class_room_id
    @child.leave_class_room
    redirect_to(action: 'show', controller: 'class_rooms', id: class_id)
  end

end
