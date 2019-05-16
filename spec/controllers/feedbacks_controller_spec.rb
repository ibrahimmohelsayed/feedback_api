require 'rails_helper'

RSpec.describe FeedbacksController, type: :controller do
  let!(:feedback){create(:feedback)}
  let!(:params) do {
    company_token: '2314124',
    priority: "minor",
    state:{
     device:"LG G4", 
     os: "Android 6.0",
     memory: 2048, 
     storage: 4096,
    }
 
   }
  end
  describe "GET #index" do
    it "returns http success" do
      get :index, params: {company_token: feedback.company_token }
      expect(response).to have_http_status(:success)
    end
    it "returns count of response" do
      get :index, params: {company_token: feedback.company_token }
      expect(JSON.parse(response.body).count).to eq(1)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params: params
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Get #show' do
    it 'returns http success 'do 
      get :show, params: {number: feedback.number, company_token: feedback.company_token }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Get count' do
    it 'return count of feedbacks for company' do
      get :count, params: {company_token: feedback.company_token}
      expect(response).to have_http_status(:success)
    end
  end
end
