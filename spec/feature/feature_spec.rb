require "capybara/rspec"

feature 'returns home page' do
  scenario 'specific thing it does' do
    visit('/')
    expect(page).to have_content "Hello World"
  end
end

feature 'Viewing Bookmarks' do
  scenario 'Shows bookmarks at the /bookmarks route' do
    visit('/bookmarks')
    expect(page).to have_content "GoogleYahooAsk_Jeeves"
  end
end
