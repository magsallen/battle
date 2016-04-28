feature 'Player 1 turn' do
  before do
    sign_in_and_play
    click_button('ATTACK')
  end
  scenario 'Clicking attack button' do
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'displays both users hit points' do
    expect(page).to have_content 'Dave 100 hit points'
    expect(page).to have_content 'Mittens 90 hit points'
  end

  scenario 'Player 1 hit points reduced' do
    expect(page).to have_content 'Mittens 90 hit points'
  end
end

feature 'Player 2 turn' do
  before do
    sign_in_and_play
    click_button('ATTACK')
    click_button('End Turn')
    click_button('ATTACK')
  end

  scenario 'Player 2 hit points reduced' do
    expect(page).to have_content 'Dave 90 hit points'
  end

  scenario 'second player turn' do
    expect(page).to have_content 'Mittens attacked Dave'
  end
end

feature 'Turn taking' do
  scenario 'ending turn' do
    sign_in_and_play
    click_button('ATTACK')
    click_button('End Turn')
    expect(page).to have_content 'It\'s Mittens\'s turn'
  end
end
