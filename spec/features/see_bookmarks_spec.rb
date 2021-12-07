feature 'Bookmarks' do
  scenario 'user views default bookmarks' do
    connection = PG.connect(dbname: 'bookmark_test_manager')
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com','makers');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com','twitter');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'google');")
    bookmarks = Bookmarks.display
    visit ('/')
    click_button 'See Bookmarks'
    expect(page).to have_content "1. makers 2. twitter 3. google"
  end
end