FactoryGirl.define do
  factory(:question) do
    ask('How to be awesome?')
  end

  factory(:response) do
    answer('Be yourself!')
  end
end
