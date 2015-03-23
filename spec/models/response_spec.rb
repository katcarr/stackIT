require 'rails_helper'

describe Response do
  it { should validate_presence_of :answer }
end
