class Room < ActiveRecord::Base
  belongs_to :floor
  has_and_belongs_to_many :artists
  has_many :items
  has_many :images, as: :imageable
  has_many :media, as: :multimediable

  validates :name, presence: true
  validates :floor_id, presence: true
end
