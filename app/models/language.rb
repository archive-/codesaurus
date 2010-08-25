class Language < ActiveRecord::Base
  # Why does this extend ActiveRecord, you ask?
  # for now, not sure. But hopefully an explanation will arise soon enough.
  has_many :features
  validates_uniqueness_of :name
end
