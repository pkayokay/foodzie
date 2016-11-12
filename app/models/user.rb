class User < ActiveRecord::Base
  has_many :places
  has_many :comments
  # validates :firstname, presence: true
  # validates :lastname, presence: true
  # validates :username, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
