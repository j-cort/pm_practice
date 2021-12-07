feature 'Bookmarks' do
  scenario 'user views default bookmarks' do
    visit ('/')
    click_button 'See Bookmarks'
    expect(page).to have_content "1. makers 2. twitter 3. google"
  end
end