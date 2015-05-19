require 'rails_helper'

RSpec.describe ClassRoom, type: :model do

  it "has a valid factory" do
    expect(FactoryGirl.create(:class_room)).to be_valid
  end

  it "has name" do
    expect(subject).to have_attribute(:name)
  end      
    
  it "has description" do
    expect(subject).to have_attribute(:description)
  end      
    
  it "has max_size" do
    expect(subject).to have_attribute(:max_size)
  end      

  it "#next_child" do
    cr = FactoryGirl.create(:class_room)
    FactoryGirl.create(:child)
    FactoryGirl.create(:waiting_list_entry)
    expect(cr.next_child.first_name).to eq('Jake')
  end

end