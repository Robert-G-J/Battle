require './app.rb'

feature 'Seeing Hit Points' do
  scenario 'Player 1 sees Player 2s Hit Points' do
    visit "/"
    fill_in :player_1_name, with: 'The Donald'
    fill_in :player_2_name, with: 'God'
    click_button "Submit"
    expect(page).to have_content "God: 21HP"
  end
end
