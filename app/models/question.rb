class Question < ActiveRecord::Base
  validates :ask, :presence => true
end
