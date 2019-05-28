require 'rails_helper'

RSpec.describe State, type: :model do
  it 'has a valid factory' do
    expect(build(:state)).to be_valid
  end
  let(:attributes) do
    {
      device:"LG G4", 
      os: "Android 6.0",
      memory: 2048, 
      storage: 4096,
    }
  end
  let(:state) { create(:state, **attributes) }
  describe 'model validations' do
    it { expect(state).to allow_value(attributes[:device]).for(:device) }
    it { expect(state).to allow_value(attributes[:os]).for(:os) }
    it { expect(state).to allow_value(attributes[:memory]).for(:memory) }
    it { expect(state).to allow_value(attributes[:storage]).for(:storage) }
  end
  describe 'model associations' do
    it { should belong_to(:feedback) } 
  end
end
