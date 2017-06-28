class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable (Email confirmation), :lockable (Failed login), :timeoutable  and :omniauthable (Sign in through something else)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates_presence_of :name       
         
  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
end
