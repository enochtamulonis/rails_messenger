class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :rooms, dependent: :destroy

  def username_or_email(user)
    if user.username != ""
      user.username
    else
      user.email.split("@").shift()
    end
  end
end
