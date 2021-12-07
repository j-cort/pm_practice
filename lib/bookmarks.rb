require 'pg'

class Bookmarks 
  def self.all
    [
      {
      name: 'makers',
      link: 'https://www.makers.tech/'
      },
      {
      name: 'stackoverflow',
      link: 'https://stackoverflow.com/'
      }, 
      {
      name: 'github',
      link: 'https://github.com/'
      }
    ]
  end

  def self.display
    display = []
    self.all.each_with_index { | site, index |
      display << "<a href='#{site[:link]}'>#{index + 1}. #{site[:name]}</a>"
    }
    display
  end

  # def sites
  #   @sites
  # end

  # def display 
  #   display = []
  #   @sites.each_with_index { | site, index |
  #     display << "<a href='#{site[:link]}'>#{index + 1}. #{site[:name]}</a>"
  #   }
  #   display
  # end

end

 # def initialize
  #   @connection = PG.connect(dbname: 'bookmark_manager')
  #   @result = @connection.exec('SELECT * FROM bookmarks') 
  #   @sites = @result.map { |bookmark| { name: bookmark['title'], link: bookmark['url'] }}
  # end

