require 'rails_helper'

describe 'process of logging in to the app' do
  it "logs in a returning user" do
    FactoryGirl.create(:user)
    visit '/'
    click_on "Login"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "12345"
    click_on "Login"
    expect(page). to have_content "test@test.com"
  end

  it "returns error message when password does not match" do
    FactoryGirl.create(:user)
    visit '/'
    click_on "Login"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "1234"
    click_on "Login"
    expect(page). to have_content "There was a problem logging you in"
  end



end
