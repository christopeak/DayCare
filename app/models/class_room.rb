class ClassRoom < ActiveRecord::Base
    has_many :children
    has_many :waiting_list_entries
    
    def add_child(child)
    end
    
    def remove_child(child)
    	#remove child from room
    	#add the next child in the wait list
    end
    
    def pop_from_waiting_list
    end
end
