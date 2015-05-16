require 'rails_helper'

RSpec.describe Child, type: :model do
  
  it "has first_name" do
    expect(subject).to have_attribute(:first_name)
  end
    
  it "has last_name" do
    expect(subject).to have_attribute(:last_name)
  end
  
  it "has class_id" do
    expect(subject).to have_attribute(:class_id)
  end
  
  it "has parent_first_name" do
    expect(subject).to have_attribute(:parent_first_name)
  end
 
  it "has parent_last_name" do
    expect(subject).to have_attribute(:parent_last_name)
  end
   
  it "has phone" do
    expect(subject).to have_attribute(:phone)
  end
   
  it "has email_address" do
    expect(subject).to have_attribute(:email_address)
  end
  
end
