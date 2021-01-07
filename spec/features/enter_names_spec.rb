feature "Enter names" do
  scenario "players can submit their names" do
    visit('/')

    fill_in(:player_1, with: "Joe")
    fill_in(:player_2, with: "Jamie")

    click_button "Start"

    expect(page).to have_content('Joe vs. Jamie')
  end
end