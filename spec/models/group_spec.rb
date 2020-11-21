require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'checks if belongs to a user' do
    should belong_to(:user)
  end

  it 'checks if has many transactions' do
    should have_many(:transactions)
  end

  it 'checks if name is present' do
    should validate_presence_of(:name)
  end

  it 'checks if has one avatar' do
    should have_one_attached(:avatar)
  end
end
