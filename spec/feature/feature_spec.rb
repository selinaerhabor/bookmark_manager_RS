require 'pg'

# feature 'returns home page' do
#   scenario 'specific thing it does' do
#     visit('/')
#     expect(page).to have_content "Bookmark Manager"
#   end
# end

feature 'Viewing Bookmarks' do
  scenario 'Shows bookmarks at the /bookmarks route' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

    visit('/bookmarks/new')
    click_button("Submit")
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
