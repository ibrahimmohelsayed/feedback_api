require 'rails_helper'

RSpec.describe State, type: :model do
  it { should belong_to(:feedback) } 
end
