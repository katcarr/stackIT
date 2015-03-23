class Question < ActiveRecord::Base
  validates :ask, :presence => true
  has_many :responses
end
