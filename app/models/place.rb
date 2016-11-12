class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  geocoded_by :address
  after_validation :geocode

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  
  validates :name,  presence: true, length: { maximum: 100, minimum: 3}
  validates :description, presence: true, length: { maximum: 220, minimum: 7}
  validates :address, presence: true, length: { maximum: 200, minimum: 10}
  validates :defaultpicture,  presence: true

  mount_uploader :defaultpicture, DefaultpictureUploader
end
