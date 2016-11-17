class User < ApplicationRecord
  # Checks wether an auth_token exists before create one for the new user
  before_create :generate_authentication_token!
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      
  validates :auth_token, uniqueness: true
  
  # Creates a friendly authentication token
  def generate_authentication_token!
    begin
      self.auth_token = Devise.friendly_token
    end while self.class.exists?(auth_token: auth_token)
  end
end
