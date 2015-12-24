class Artist < ActiveRecord::Base
  has_many :items
  has_and_belongs_to_many :rooms
  # has_many :media, through :multimediable
  has_many :images, as: :imageable
  has_many :media, as: :multimediable

  validates :name, presence: true
end
