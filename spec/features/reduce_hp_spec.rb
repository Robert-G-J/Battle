require './app.rb'

feature "reducing HP from attack" do
  scenario "attack to reduce Player 2's HP by 10" do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content "God: 50HP"
  end
end
