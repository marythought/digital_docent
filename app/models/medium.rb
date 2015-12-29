class Medium < ActiveRecord::Base
  belongs_to :multimediable, polymorphic: true

  validates :file_link, presence: true

  def global_multimediable
    self.multimediable.to_global_id if self.multimediable.present?
  end

  def global_multimediable=(multimediable)
    self.multimediable = GlobalID::Locator.locate multimediable
  end
end
