require 'rails_helper'

RSpec.describe FeedbackCreatorWorker  do
  let!(:feedback){create(:feedback)}
  let!(:params) do {
    company_token: '2314124',
    priority: "minor",
    number: 1,
    state:{
     device:"LG G4", 
     os: "Android 6.0",
     memory: 2048, 
     storage: 4096,
    }
   }
  end
  it "Should run worker" do
    expect {
      FeedbackCreatorWorker.perform_async(params.except(:state), params[:state]
      )
    }.to change(FeedbackCreatorWorker.jobs, :size).by(1)
  end
  it "Should return success" do
    expect(FeedbackCreatorWorker.perform_async(params.except(:state), params[:state])).to  be_truthy
  end
end
