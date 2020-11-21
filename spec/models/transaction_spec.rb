require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it 'checks if belongs to a user' do
    should belong_to(:user)
  end

  it 'checks if validate presence of amount' do
    should validate_presence_of(:amount)
  end

  it 'checks if validate presence of name' do
    should validate_presence_of(:name)
  end

  it 'checks if validate length of desc' do
    should validate_length_of(:desc)
  end
end
