require 'rails_helper'

RSpec.describe 'EventAttendings', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/event_attendings/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/event_attendings/create'
      expect(response).to have_http_status(:success)
    end
  end
end
