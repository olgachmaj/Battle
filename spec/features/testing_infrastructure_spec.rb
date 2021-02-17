require 'spec_helper'


feature 'Filling out the form' do
  scenario 'Can fill form out and posts valid value' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'John :60HP'
  end
end
