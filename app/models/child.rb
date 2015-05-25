class Child < ActiveRecord::Base
    belongs_to :class_room
    has_many :class_rooms, through: :waiting_list_entries

    def leave_class_room
      self.class_room_id = nil
      self.save
    end

    def full_name
      self.first_name + ' ' + self.last_name
    end

    def room_name
      self.class_room_id != nil ? self.class_room.name : 'no classroom'
    end
end
