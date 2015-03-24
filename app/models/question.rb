class Question < ActiveRecord::Base
  validates :ask, :presence => true
  has_many :responses
  belongs_to :user

  def bestFirst
    self.responses.sort_by {|obj| obj.best ? 0 : 1}    
  end
end
