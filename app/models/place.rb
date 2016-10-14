class Place < ActiveRecord::Base
  belongs_to :user


  validates :name,  presence: true, length: { maximum: 100, minimum: 3}
  validates :description, presence: true, length: { maximum: 220, minimum: 7}
  validates :address, presence: true, length: { maximum: 200, minimum: 10}

end
