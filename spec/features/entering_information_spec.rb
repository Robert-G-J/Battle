require './app.rb'

feature "Entering information" do
  scenario "Players can fill in a name form" do
    visit "/"
    sign_in_and_play
    expect(page).to have_content "The Donald vs. God"
  end
end
