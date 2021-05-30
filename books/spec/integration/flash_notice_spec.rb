#acceptance testing
require 'rails_helper'
RSpec.describe 'index', type: :feature do
  before :each do
      visit :index
      click_button 'Delete'
      expect(alert_present?).to eq(true)
  end
end