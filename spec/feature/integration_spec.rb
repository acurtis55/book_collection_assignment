# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 15.99
    select '2020', :from => 'book_published_date_1i'
    select 'January', :from => 'book_published_date_2i'
    select '10', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 15.99
    select '2020', :from => 'book_published_date_1i'
    select 'January', :from => 'book_published_date_2i'
    select '10', :from => 'book_published_date_3i'
    click_on 'Create Book'
    expect(page).to have_content('jk rowling')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 15.99
    select '2020', :from => 'book_published_date_1i'
    select 'January', :from => 'book_published_date_2i'
    select '10', :from => 'book_published_date_3i'
    click_on 'Create Book'
    expect(page).to have_content('15.99')
  end

  scenario 'valid date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 15.99
    select '2020', :from => 'book_published_date_1i'
    select 'January', :from => 'book_published_date_2i'
    select '10', :from => 'book_published_date_3i'
    click_on 'Create Book'
    expect(page).to have_content('2020-01-10')
  end
end
