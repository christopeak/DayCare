class ClassRoomsController < ApplicationController
  
  def show
    @class_room = ClassRoom.find(params[:id])    
    @children_count = @class_room.children.count
  end

  def index
    @class_rooms = ClassRoom.all
    @class_room_count = ClassRoom.count
  end

end
