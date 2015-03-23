require 'rails_helper'



describe "process of repsonding to a question" do
  it "will go to question page when Question is clicked" do
    test_q = FactoryGirl.create(:question)
    visit 'questions'
    click_on test_q.ask
    expect(current_path).to eql(question_path(test_q))
  end

  it "will show new response to question" do
    test_q = FactoryGirl.create(:question)
    visit question_path(test_q)
    fill_in "Answer", with: "Be friends with Kathryn"
    click_on "AnswerIT"
    expect(page).to have_content "Be friends with Kathryn"
  end

  it "will show error message when answer is empty" do
    test_q = FactoryGirl.create(:question)
    visit question_path(test_q)
    fill_in "Answer", with: ""
    click_on "AnswerIT"
    expect(page).to have_content 'problem submitting your answer'
  end

end
