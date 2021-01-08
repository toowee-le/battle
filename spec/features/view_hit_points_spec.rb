feature "View hit points" do
  scenario "view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content('Jamie: 60 HP')
  end
end