FactoryGirl.define do
  factory(:question) do
    ask('How to be awesome?')
  end

  factory(:response) do
    answer('Be yourself!')
  end

  factory(:user) do
    email('test@test.com')
    password('12345')
  end
end
