class ChildrenController < ApplicationController


  def remove_from_class_room
    @child = Child.find (params[:id])
    class_room = @child.class_room
    @child.leave_class_room
    new_child = class_room.next_child
    flash[:child_id] = new_child.id if new_child
    redirect_to(action: 'show', controller: 'class_rooms', id: class_room.id)
  end

  def add
  end

  def index
    @children = Child.all
  end

  def edit
    @child = Child.find (params[:id])
  end

  def update
    @child = Child.find (params[:id])
    @child.last_name = params[:child][:last_name]
    @child.first_name = params[:child][:first_name]
    @child.save
    redirect_to(action: 'index', controller: 'children')
  end
end
