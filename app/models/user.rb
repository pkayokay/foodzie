class User < ActiveRecord::Base
  has_many :places
  has_many :comments
  validates :email, presence: true
  validates :firstname, presence: true, length: { maximum: 20 }
  validates :lastname, presence: true, length: { maximum: 20 }
  validates :username, presence: true, length: { minimum: 3, maximum: 20 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
