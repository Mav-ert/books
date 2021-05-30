#unit testing: correct index
require 'rails_helper'
RSpec.describe "viewing the index" , type: :feature do  
    it 'should render the page body' do
        visit :index
        assert_selector "h1", text: "Books"
    end
end