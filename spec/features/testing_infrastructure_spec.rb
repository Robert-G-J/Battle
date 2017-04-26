require './app.rb'

# feature "Testing infrastructure" do
#   scenario "Can run app and check page content" do
#     visit "/"
#     expect(page).to have_content "Testing Infrastructure Working!"
#   end
# end

feature "Entering information" do
  scenario "Players can fill in a name form" do
    visit "/"
    fill_in :player_1_name, with: 'The Donald'
    fill_in :player_2_name, with: 'God'
    click_button "Submit"
    expect(page).to have_content "The Donald vs. God"
  end
end
