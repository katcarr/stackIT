require 'rails_helper'

describe 'process of creating new user account' do
  it 'will create new user' do
    visit '/'
    click_on "Sign Up"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "12345"
    fill_in "Password confirmation", with: "12345"
    click_on "Sign Up"
    expect(page). to have_content "test@test.com"
  end
end
