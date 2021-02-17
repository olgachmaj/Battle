require 'spec_helper'


feature 'Filling out the form' do
  scenario 'Can fill form out and posts valid value' do
    visit('/')
    fill_in('name', with: 'John')
    click_on('Submit')
    expect(page).to have_content 'John'
  end
end
