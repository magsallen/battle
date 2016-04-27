feature 'Attack' do
  scenario 'Clicking attack button' do
    sign_in_and_play
    click_button('ATTACK.')
    expect(page).to have_content 'Dave attacked Mittens :('
  end
end
