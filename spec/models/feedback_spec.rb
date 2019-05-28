require 'rails_helper'

RSpec.describe Feedback, type: :model do
  it 'has a valid factory' do
    # Check that the factory we created is valid
    expect(build(:feedback)).to be_valid
  end
  let(:attributes) do
    {
    company_token: '2314124',
    priority: "minor",
    number: 1,
  }
  end
  let(:feedback) { create(:feedback, **attributes) }
  describe 'model validations' do
    it { expect(feedback).to allow_value(attributes[:company_token]).for(:company_token) }
    it { expect(feedback).to allow_value(attributes[:priority]).for(:priority) }
    it { expect(feedback).to allow_value(attributes[:number]).for(:number) }
  end
  describe 'model associations' do
    it { should have_one(:state) }
  end  
end
