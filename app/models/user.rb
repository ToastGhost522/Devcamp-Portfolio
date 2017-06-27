class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable (Email confirmation), :lockable (Failed login), :timeoutable  and :omniauthable (Sign in through something else)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
