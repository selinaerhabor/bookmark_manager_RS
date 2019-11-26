# Code needed to run the web app, orgnaised into Classes and Methods

class Bookmarks
  def initialize
    @bookmark_list = [
      "www.google.co.uk",
      "www.yahoo.co.uk",
      "www.askjeeves.com"
    ]
  end
  def all
    list = ""
    @bookmark_list.each do |item|
      list += "<li>" + item
    end
    return list
  end

end
