require 'rails_helper'


describe User do
  it {should have_many :questions}
  it {should have_many :responses}

  it "should have three questions belonging to it when using FactoryGirl
   create user with questions" do
    user = FactoryGirl.create(:user_with_questions)
    expect(user.questions.length).to(eq(3))
  end

end
