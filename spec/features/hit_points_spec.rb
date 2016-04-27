feature 'Hit points' do
  scenario 'viewing hit points' do
    sign_in_and_play
    expect(page).to have_content '100 Hit points'
  end
end
