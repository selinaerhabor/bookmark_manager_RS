require "capybara/rspec"

feature 'returns home page' do
  scenario 'specific thing it does' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'Viewing Bookmarks' do
  scenario 'Shows bookmarks at the /bookmarks route' do
    visit('/bookmarks')
    expect(page).to have_content "www.google.co.uk"
    expect(page).to have_content "www.yahoo.co.uk"
    expect(page).to have_content "www.askjeeves.com"
  end
end
