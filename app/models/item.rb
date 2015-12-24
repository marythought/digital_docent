class Item < ActiveRecord::Base
  belongs_to :artist
  belongs_to :room
  has_many :images, as: :imageable
  has_many :media, as: :multimediable

  validates :work_title, presence: true
  validates :artist_id, presence: true
  validates :date_acquired, presence: true
end
