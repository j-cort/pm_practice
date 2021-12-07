require 'pg'

def set_up_test_database

  p "Setting up test database..."

  connection = PG.connect(dbname: 'bookmark_test_manager')

  # Clear the bookmarks table
  connection.exec("TRUNCATE bookmarks;")
  p "I've been truncated"
end