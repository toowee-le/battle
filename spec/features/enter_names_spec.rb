feature "Enter names" do
  scenario "players can submit their names" do
    sign_in_and_play
    expect(page).to have_content('Joe vs. Jamie')
  end
end