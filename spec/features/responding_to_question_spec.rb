require 'rails_helper'



describe "process of responding to a question" do
  it "will go to question page when Question is clicked" do
    user = FactoryGirl.create(:user)
    test_q = FactoryGirl.create(:question, user_id: user.id)
    sign_in_user(user)
    click_on test_q.ask
    expect(current_path).to eql(question_path(test_q))
  end

  it "will show new response to question" do
    user = FactoryGirl.create(:user)
    test_q = FactoryGirl.create(:question, user_id: user.id)
    sign_in_user(user)
    visit question_path(test_q)
    fill_in "Answer", with: "Be friends with Kathryn"
    click_on "AnswerIT"
    expect(page).to have_content "Be friends with Kathryn"
  end

  it "will show error message when answer is empty" do
    user = FactoryGirl.create(:user)
    test_q = FactoryGirl.create(:question, user_id: user.id)
    sign_in_user(user)
    visit question_path(test_q)
    fill_in "Answer", with: ""
    click_on "AnswerIT"
    expect(page).to have_content 'problem submitting your answer'
  end

end
