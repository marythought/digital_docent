class Item < ActiveRecord::Base
  belongs_to :artist
  belongs_to :room
  has_many :images, as: :imageable
  has_many :media, as: :multimediable

  validates :name, presence: true
end
