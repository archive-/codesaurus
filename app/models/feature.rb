class Feature < ActiveRecord::Base
  belongs_to :language
  validates_uniqueness_of :name, :scope => :language_id
end
