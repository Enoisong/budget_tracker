require 'rails_helper'

RSpec.feature 'Splash', type: :feature do
  scenario 'should display the Splash by redirecting' do
    visit categories_path
    expect(page).to have_content('Budget Tracker')
  end
end
