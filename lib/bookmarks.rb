require 'pg'

class Bookmarks 
  def self.all
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect(dbname: "bookmark_test_manager")
    else
      connection = PG.connect(dbname: "bookmark_manager")
    end
    result = connection.exec('SELECT * FROM bookmarks') 
    result.map { |bookmark| { name: bookmark['title'], link: bookmark['url'] }}
  end

  def self.display
    display = []
    self.all.each_with_index { | site, index |
      display << "<a href='#{site[:link]}'>#{index + 1}. #{site[:name]}</a>"
    }
    display
  end
end

