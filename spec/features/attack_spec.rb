require './app.rb'

feature 'Attack Player' do
  scenario 'Player 1 attacks Player 2' do
    visit '/'
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content "You have successfully attacked God!"
  end
end
