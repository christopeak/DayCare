class WaitingListEntry < ActiveRecord::Base
    belongs_to :class_room
    belongs_to :child

    def add_child(child, class_room)
    end

    def remove_child(child, class_room)
    end

end
