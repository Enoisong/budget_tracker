require 'rails_helper'

RSpec.describe 'Category', type: :request do
  context 'GET root' do
    it 'returns category list' do
      get root_path
      expect(response).to have_http_status(:ok)
    end
  end

  context 'GET category_bills_url' do
    it 'returns a category details with bills' do
      category = FactoryBot.create(:category)
      get category_path(category)
      expect(response).to have_http_status(:ok)
    end
  end

  context 'GET category_new_url' do
    it 'returns a new category form' do
      get new_category_path
      expect(response).to have_http_status(:ok)
    end
  end
end
