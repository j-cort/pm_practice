feature 'Adding Bookmarks' do
  scenario 'providing a title and url to create a new bookmark' do
    connection = PG.connect(dbname: 'bookmark_test_manager')
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com','makers');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com','twitter');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'google');")
    bookmarks = Bookmarks.display
    visit ('/')
    click_button 'Add Bookmark'
    expect(page).to have_field "add_bookmark"
  end
  scenario 'providing a title and url to create a new bookmark' do
    connection = PG.connect(dbname: 'bookmark_test_manager')
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com','makers');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com','twitter');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'google');")
    bookmarks = Bookmarks.display
    visit ('/')
    click_button 'Add Bookmark'
    fill_in 'title', with: 'codecademy'
    fill_in 'url', with: 'https://www.codecademy.com/'
    click_button 'Submit'
    # redirect 'index.erb'
    click_button 'See Bookmarks'
    expect(page).to have_content "1. makers 2. twitter 3. google 4. codecademy"
  end
end