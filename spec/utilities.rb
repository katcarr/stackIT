def sign_in_user(user)
  visit '/'
  click_on "Sign Up"
  fill_in "Email", with: "test@test.com"
  fill_in "Password", with: "12345"
  fill_in "Password confirmation", with: "12345"
  click_on "Sign Up"
end
