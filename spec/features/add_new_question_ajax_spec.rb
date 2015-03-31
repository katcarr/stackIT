require 'rails_helper'

describe 'the add a new question process' do
  it 'adds a question with ajax', js: true do
    user = FactoryGirl.create(:user)
    sign_in_user(user)
    visit questions_path
    fill_in 'Ask', with: 'question test user is asking'
    click_on 'Submit'
    expect(page).to have_content('question test user is asking')
  end
end
