# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling', price: 15.99, published_date: '2021-04-01')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
  # test 2 do
  #   described_class.new(title: 'The Giver', author: 'Lois Lowry', price: 20, published_date: '1993-05-10')
  # end
  #
  # it 'is valid with valid attributes' do
  #   expect(test2).to be_valid
  # end
  #
  # it 'is not valid without all attributes' do
  #   test2.title = nil
  #   test2.author = nil
  #   test2.price = nil
  #   test2.published_date = nil
  #   expect(test2).not_to be_valid
  # end

end
