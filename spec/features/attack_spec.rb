feature 'Attack' do
  scenario 'Clicking attack button' do
    sign_in_and_play
    click_button('ATTACK.')
    expect(page).to have_content 'You have attacked player 2 :('
  end
end
