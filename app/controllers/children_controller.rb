class ChildrenController < ApplicationController

  def remove_from_class_room
    @child = Child.find (params[:id])
    @child.leave_class_room
  end

end
