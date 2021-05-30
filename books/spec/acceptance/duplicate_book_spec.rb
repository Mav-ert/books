#acceptance test: As a user I dont want to have duplicate books
require 'rails_helper'
RSpec.describe 'new', type: :feature do
  b = Book.create(title: 'test2', author: 'testauthor')

  before :each do
    visit :new
    fill_in 'Author', with: 'jill'
    fill_in 'Title', with: 'test1'
    fill_in 'Price', with: 18.99

    click_button 'Create Book'
  end
  it "should render the text failure" do
    expect(page).to have_content('Title has already been taken')
  end
end