require './app.rb'

feature 'Seeing Hit Points' do
  scenario 'Player 1 sees Player 2s Hit Points' do
    visit "/"
    sign_in_and_play
    expect(page).to have_content "God: 21HP"
  end
end
