class Medium < ActiveRecord::Base
  belongs_to :multimediable, polymorphic: true

  validates :file_link, presence: true
end
