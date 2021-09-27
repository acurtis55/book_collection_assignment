# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in 'author', with: 'jk rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in 'price', with: 5.99
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(5.99)
  end

  scenario 'valid publish date' do
    visit new_book_path
    fill_in 'publishedDate', with: '01-01-2021'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('01-01-2021')
  end

end
