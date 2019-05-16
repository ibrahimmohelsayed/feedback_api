require 'rails_helper'

RSpec.describe Feedback, type: :model do
  it { should have_one(:state) }
end
