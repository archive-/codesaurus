class Feature < ActiveRecord::Base
  belongs_to :language
  has_paper_trail
  validates_uniqueness_of :name, :scope => :language_id
end
