feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Joe attacked Jamie')
  end
end