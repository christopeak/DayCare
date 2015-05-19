require 'rails_helper'

RSpec.describe ClassRoomsController, type: :controller do

  describe "GET index" do
    it "responds successfully with an HTTP 200 status code" do 
      sign_in 'cpeak@test.test'
      get 'index'
      expect(response).to be_success
     # expect(response).to have_http_status(200)
    end 
  end
end
