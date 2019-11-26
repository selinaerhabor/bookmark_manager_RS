require "capybara/rspec"

# feature 'returns home page' do
#   scenario 'specific thing it does' do
#     visit('/')
#     expect(page).to have_content "Bookmark Manager"
#   end
# end

feature 'Viewing Bookmarks' do
  scenario 'Shows bookmarks at the /bookmarks route' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
