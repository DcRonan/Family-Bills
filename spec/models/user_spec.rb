require 'rails_helper'

RSpec.describe User, type: :model do
  it 'checks if has many transactions' do
    should have_many(:transactions)
  end

  it 'checks if has many groups' do
    should have_many(:groups)
  end

  it 'checks if has many groups' do
    should have_one_attached(:avatar)
  end
end
