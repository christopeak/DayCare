require 'rails_helper'

RSpec.describe ClassRoom, type: :model do
    
  it "has name" do
       expect(subject).to have_attribute(:name)
  end      
    
  it "has description" do
       expect(subject).to have_attribute(:description)
  end      
    
  it "has max_size" do
       expect(subject).to have_attribute(:max_size)
  end      

end
