require 'rails_helper'

RSpec.describe 'Bills', type: :request do
  context 'GET new_category_bill_path' do
    it 'returns a 200 response' do
      category = FactoryBot.create(:category)
      get new_category_bill_path(category)
      expect(response).to have_http_status '200'
    end
  end
end
