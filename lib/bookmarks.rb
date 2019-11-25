# Code needed to run the web app, orgnaised into Classes and Methods

class Bookmarks
  def initialize
    @bookmark_list = ["Google", "Yahoo", "Ask_Jeeves"]
  end
  def all
    list = ""
    @bookmark_list.each do |item|
      list += item + "<br>"
    end
    return list
  end

end
