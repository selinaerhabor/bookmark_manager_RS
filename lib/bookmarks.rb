# Code needed to run the web app, orgnaised into Classes and Methods
require 'pg'

class Bookmarks

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmarks| bookmarks['url'] }
  end

end
