class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
    .
      .
      .
    private
  def create remember token
    self.remember token = SecureRandom.urlsafe_base64
  end
end

