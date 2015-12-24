class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  validates :file_link, presence: true

  def global_imageable
    self.imageable.to_global_id if self.imageable.present?
  end

  def global_imageable=(imageable)
    self.imageable = GlobalID::Locator.locate imageable
  end

end
