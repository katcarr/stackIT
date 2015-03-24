require 'rails_helper'

describe Question do
    it { should validate_presence_of :ask }
    it { should have_many :responses }
    it { should belong_to :user}

    it "will have three responses when create with FactoryGirl" do
      question = FactoryGirl.create(:question_with_responses)
      expect(question.responses.length).to(eq(3))
    end
end
