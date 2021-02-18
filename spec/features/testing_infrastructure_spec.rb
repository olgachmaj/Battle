require 'spec_helper'


feature 'Filling out the form' do
  scenario 'Can fill form out and posts valid value' do
    sign_in_and_play
    expect(page).to have_content "#{@player_1_name} vs. #{@player_2_name}\n#{@player_1_name} #{@player_1_hit_points} #{@player_2_name} #{@player_2_hit_points}"
  end
end
feature 'Attacking takes away players 2 HP' do
  scenario 'Takes away HP' do
    sign_in_and_play
    click_on'attackplayer2'
    expect(page).to have_content "#{@player_1_name} vs #{@player_2_name} #{@player_2_name} #{@player_2_hit_points - @test_attack} HP Its #{@player_2_name}'s turn!"
  end
end
  feature 'Attacking with a player1 switches turn to player2' do
    scenario 'turn is player2' do
      sign_in_and_play
      click_on'attackplayer1'
      expect(page).to have_content "#{@player_1_name} vs #{@player_2_name} #{@player_1_name} #{@player_2_hit_points - @test_attack} HP Its #{@player_1_name}'s turn!"
    end
  end
