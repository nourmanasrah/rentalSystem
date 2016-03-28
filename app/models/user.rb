class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :confirmable
  validates :fullname, presence: true, length: {maximum: 20}      
  validates :fname, presence: true, length: {maximum: 20}
  validates :lname, presence: true, length: {maximum: 20}

  has_many :rooms
end
