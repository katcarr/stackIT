require 'rails_helper'

  describe "add new question process" do
    it "will return error message if ask is empty" do
      visit 'questions'
      fill_in 'Ask', with: ""
      click_on 'Submit'
      expect(page).to have_content 'There was a problem submitting your question'
    end

    it "will show the new question" do
      visit 'questions'
      fill_in 'Ask', with: "How do I be more awesome?"
      click_on 'Submit'
      expect(page).to have_content 'How do I be more awesome'
    end
end
