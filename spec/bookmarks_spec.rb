require 'bookmarks'

describe Bookmarks do

  describe '#display' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_test_manager')
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com','makers');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com','twitter');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'google');")
      bookmarks = Bookmarks.display
      p bookmarks
      expect(bookmarks).to include "<a href='http://www.makersacademy.com'>1. makers</a>"
      expect(bookmarks).to include "<a href='http://www.destroyallsoftware.com'>2. twitter</a>"
      expect(bookmarks).to include "<a href='http://www.google.com'>3. google</a>"
    end

  end

end