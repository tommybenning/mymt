class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation,
                  :remember_me, :zipcode, :first_name, :last_name,
                  :phone, :description

  has_many :openings

  def full_name
    "#{first_name} #{last_name}"
  end
end
