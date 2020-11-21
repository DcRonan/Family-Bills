require 'rails_helper'

RSpec.feature "Groups", type: :feature do
  it 'checks content when a group is created' do
    visit '/users/sign_up'
    fill_in :user_name, with: 'Daniel Ronan'
    fill_in :user_email, with: 'dan@mail.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_on 'Sign up'
    visit groups_path
    click_on 'Add New'
    fill_in :group_name, with: 'Tech'
    click_on 'Create Group'
    expect(page).to have_content('Group was successfully created.')
  end

  it 'checks if certain content is not displayed when a group is created' do
    visit '/users/sign_up'
    fill_in :user_name, with: 'Daniel Ronan'
    fill_in :user_email, with: 'dan@mail.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_on 'Sign up'
    visit groups_path
    click_on 'Add New'
    fill_in :group_name, with: 'Tech'
    click_on 'Create Group'
    expect(page).not_to have_content('Group was NOT successfully created.')
  end

  it 'checks content when a group is updated' do
    visit '/users/sign_up'
    fill_in :user_name, with: 'Daniel Ronan'
    fill_in :user_email, with: 'dan@mail.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_on 'Sign up'
    visit groups_path
    click_on 'Add New'
    fill_in :group_name, with: 'Tech'
    click_on 'Create Group'
    click_on 'Edit'
    click_on 'Update Group'
    expect(page).to have_content('Group was successfully updated.')
  end

  it 'checks content is correct when a group is updated' do
    visit '/users/sign_up'
    fill_in :user_name, with: 'Daniel Ronan'
    fill_in :user_email, with: 'dan@mail.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_on 'Sign up'
    visit groups_path
    click_on 'Add New'
    fill_in :group_name, with: 'Tech'
    click_on 'Create Group'
    click_on 'Edit'
    click_on 'Update Group'
    expect(page).not_to have_content('Group was deleted.')
  end
end
