feature 'Testing infrastructure' do
  scenario 'the app can run with the correct content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end