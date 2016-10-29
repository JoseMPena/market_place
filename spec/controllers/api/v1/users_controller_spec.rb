require 'spec_helper'
require 'rails_helper'
include Requests::JsonHelpers

describe Api::V1::UsersController, :type => :controller do
  before(:each) { request.headers['Accept'] = "application/vnd.localhost.v1" }
  let(:user) { FactoryGirl.create :user }

  describe "GET #show" do
    before(:each) do
      get :show, id: user.id, format: :json
    end

    it "returns the information about a reporter on a hash" do
      expect(json[:email]).to eql user.email
    end

    it { should respond_with 200 }
  end

  describe "POST #create" do

    context "when user is successfully created" do
      before :each do
        @user_attributes = FactoryGirl.attributes_for :user
        post :create, { user: @user_attributes }, format: :json
      end

      it "renders the created user as json" do
        expect(json[:email]).to eql(@user_attributes[:email])
      end
      it { should respond_with 201}
    end

    context "when user is not created" do
      before :each do
        @invalid_user_attributes = {
          #not including email
          password: "123456",
          password_confirmation: "123456"
        }
        post :create, { user: @invalid_user_attributes }, format: :json
      end

      it "renders an error as json" do
        expect(json[:errors][:email]).to include "can't be blank"
      end

      it { should respond_with 422 }
    end
  end

  describe "PUT/PATCH #update" do

    context "when user is successfully updated" do
      before :each do
        patch :update, {
          id: user.id, user: { email: "mail@example.org" } }, format: :json
      end

      it "renders the updated user as json" do
        expect(json[:email]).to eql("mail@example.org")
      end

      it { should respond_with 200}
    end

    context "when user is not updated" do
      before :each do
        patch :update, {
          id: user.id, user: { email: "wrongemail.org" } }, format: :json
      end

      it "renders updating errors as json" do
        expect(json[:errors][:email]).to include "is invalid"
      end

      it { should respond_with 422 }
    end
  end

  describe "DELETE #destroy" do
    context "when user is successfully deleted" do
      it "responds with successful delete" do
        delete :destroy, { id: user.id }, format: :json
        should respond_with 204
      end
    end

    context "when user is not deleted" do
      it "responds with user not found for wrong user" do
        delete :destroy, { id: "asdf" }, format: :json
        should respond_with 404
      end
    end
  end
end
