class Question < ActiveRecord::Base
  validates :ask, :presence => true
  has_many :responses
  belongs_to :user

  def bestFirst
    best_first = self.responses.sort_by {|obj| obj.best ? 0 : 1}
    responses_to_return = []
    responses_to_return.push(best_first.pop)
    binding.pry
    responses_to_return + best_first.sort_by { |obj| obj.get_likes.size }.reverse
  end
end
