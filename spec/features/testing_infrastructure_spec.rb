require 'spec_helper'


feature 'Filling out the form' do
  scenario 'Can fill form out and posts valid value' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'John :60HP'
  end
end
feature 'Attacking takes away players 2 HP' do
  scenario 'Takes away HP' do
    visit('/')
    sign_in_and_play
    click_on'Attack'
    expect("1hp").to have_content ":50HP"
  end
end
