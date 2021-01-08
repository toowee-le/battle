feature "View hit points" do
  scenario "view player 2's hit points" do
    visit("/")

    fill_in(:player_1, with: "Joe")
    fill_in(:player_2, with: "Jamie")

    click_button "Start"

    expect(page).to have_content('Jamie: 60 HP')
  end
end