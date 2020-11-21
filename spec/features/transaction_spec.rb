require 'rails_helper'

RSpec.feature 'Transactions', type: :feature do
  it 'checks content when a transaction is created' do
    visit '/users/sign_up'
    fill_in :user_name, with: 'Daniel Ronan'
    fill_in :user_email, with: 'dan@mail.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_on 'Sign up'
    visit transactions_path
    click_on 'Add New'
    fill_in :transaction_name, with: 'EE'
    fill_in :transaction_amount, with: '22'
    fill_in :transaction_desc, with: 'Phone bill'
    click_on 'Create Bill'
    expect(page).to have_content('EE')
  end

  it 'checks content when a transaction is created' do
    visit '/users/sign_up'
    fill_in :user_name, with: 'Daniel Ronan'
    fill_in :user_email, with: 'dan@mail.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_on 'Sign up'
    visit transactions_path
    click_on 'Add New'
    fill_in :transaction_name, with: 'EE'
    fill_in :transaction_amount, with: '22'
    fill_in :transaction_desc, with: 'Phone bill'
    click_on 'Create Bill'
    expect(page).not_to have_content('Car Insurance')
  end
end
