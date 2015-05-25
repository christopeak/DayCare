class ChildrenController < ApplicationController


  def remove_from_class_room
    @child = Child.find (params[:id])
    class_room = @child.class_room
    @child.leave_class_room
    new_child = class_room.next_child
    flash[:child_id] = new_child.id if new_child
    redirect_to(action: 'show', controller: 'class_rooms', id: class_room.id)
  end

  def new
    @child = Child.create
    #@child.first_name = params[:child][:first_name]
    #@child.last_name = params[:child][:last_name]
    #@child.class_room_id = params[:child][:class_room_id]
    #@child.save   @child.first_name = params[:child][:first_name]
    #redirect_to(action: 'index', controller: 'children')
  end

  def create
    @child.first_name = params[:child][:first_name]
    @child.last_name = params[:child][:last_name]
    @child.class_room_id = params[:child][:class_room_id]
    @child.save 
    redirect_to(action: 'index', controller: 'children')
  end

  def index
    @children = Child.all
  end

  def edit
    @child = Child.find (params[:id])
  end

  def update
    @child = Child.find (params[:id])
    @child.first_name = params[:child][:first_name]
    @child.last_name = params[:child][:last_name]
    @child.class_room_id = params[:child][:class_room_id]
    @child.save 
    redirect_to(action: 'index', controller: 'children')
  end
end
