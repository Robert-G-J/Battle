require './app.rb'

feature "testing_infrastructure" do
  scenario "Home Page" do
    visit "/"
    expect(page).to have_content "Testing Infrastructure Working!"
  end
end
