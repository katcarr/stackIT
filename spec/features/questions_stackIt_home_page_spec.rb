require 'rails_helper'


describe "showing question on the home page" do
  it "will list questions on the home page" do
    user = FactoryGirl.create(:user)
    sign_in_user(user)
    test_question = FactoryGirl.create(:question)
    visit 'questions'
    expect(page).to have_content test_question.ask
  end

end
