# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
class_rooms = ClassRoom.create([
 {name: 'Room A' , description: 'A classroom for newborns', max_size: 3, 
	 teacher_first_name: 'Henrietta', teacher_last_name: 'Goldfinger'},
 {name: 'Room B' , description: 'One-year-olds', max_size: 4, 
	 teacher_first_name: 'George', teacher_last_name: 'Carlin'},
 {name: 'Room C' , description: 'Two-year-olds/toddlers', max_size: 5, 
	 teacher_first_name: 'Jack', teacher_last_name: 'Black'}
  ])

children = Child.create([
   {first_name: 'Harold', last_name: 'Langerwein', class_room_id: 1},
   {first_name: 'Julius', last_name: 'Barnes', class_room_id: 1},
   {first_name: 'Wanda', last_name: 'Smithers', class_room_id: 1},
   {first_name: 'Pat', last_name: 'Fonda', class_room_id: 2},
   {first_name: 'Max', last_name: 'Popper', class_room_id: 2},
   {first_name: 'Sam', last_name: 'Knuckleberries', class_room_id: 2},
   {first_name: 'Grover', last_name: 'Cleveland', class_room_id: 2},
   {first_name: 'John', last_name: 'Lamoche', class_room_id: 3},
   {first_name: 'Bernice', last_name: 'Jones', class_room_id: 3},
   {first_name: 'Mary', last_name: 'Posthuma', class_room_id: 3},
   {first_name: 'Scarlet', last_name: 'Snackerdoodle', class_room_id: nil},
   {first_name: 'Jimmy', last_name: 'Snipper', class_room_id: nil}
   ])
   
waiting_lists = WaitingListEntry.create([
  {class_room_id: 1, child_id: 1},
  {class_room_id: 1, child_id: 2},
  {class_room_id: 1, child_id: 1},
  {class_room_id: 2, child_id: 3},
  {class_room_id: 2, child_id: 4},
  {class_room_id: 2, child_id: 2},
  {class_room_id: 2, child_id: 5}
  ])
