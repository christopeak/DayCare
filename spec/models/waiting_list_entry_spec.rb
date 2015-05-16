require 'rails_helper'

RSpec.describe WaitingListEntry, type: :model do
    
  it "has class_id" do
    expect(subject).to have_attribute(:class_id)
  end
  
  it "has child_id" do
    expect(subject).to have_attribute(:child_id)
  end
    
end
