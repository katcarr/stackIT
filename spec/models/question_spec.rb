require 'rails_helper'

describe Question do
    it { should validate_presence_of :ask }
    it { should have_many :responses }

    
end
