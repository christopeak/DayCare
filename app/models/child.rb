class Child < ActiveRecord::Base
    belongs_to :class_room
    has_many :class_rooms, through: :waiting_list_entries

		def add_to_wait_list(class_room)
		end

		def join_class_room(class_room)
		end

		def leave_class_room
			self.class_room_id = nil
      self.save
		end

end
