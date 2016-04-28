feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

feature 'Turn taking' do
  scenario 'who\'s turn is it?' do
    sign_in_and_play
    expect(page).to have_content 'It\'s Dave\'s turn'
  end
end
