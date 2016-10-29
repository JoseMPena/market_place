require 'rails_helper'

cd
  before(:each) {
    request.headers['Accept'] = "application/vnd.localhost:3000"
  }

  describe "GET #show" do
    before(:each) do
      @user = FactoryGirl.create :user
      get :show, params: {id: @user.id}, format: :json
    end

    it "returns info on a hash" do
      user_response = JSON.parse(response.body, symbolize_names: true)
      expect(user_response[:email]).to eql @user.email
    end

    it {
      should respond_with 200
    }
  end
end
