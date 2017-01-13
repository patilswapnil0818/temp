class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_create :confirmation_token

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private
  def confirmation_token
    if self.confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end
end
