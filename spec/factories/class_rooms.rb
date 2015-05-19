FactoryGirl.define do 
  factory :class_room do |f|
    f.name 'Room X' 
    f.max_size 4
  end

  factory :child do |f|
    f.first_name 'Jake'
    f.last_name 'Thesnake'
    f.class_room_id nil
  end

  factory :waiting_list_entry do |f|
    f.class_room_id 1
    f.child_id 1 
  end
end