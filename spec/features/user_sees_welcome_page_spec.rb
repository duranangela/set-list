=begin
As a visitor
When I visit the home page of the app
Then I should see a welcome message
=end

RSpec.describe 'a visitor visiting a welcome page' do
  context 'visiting /' do
    it 'should show a welcome message' do

      visit '/'
      
      save_and_open_page

      within("#greeting") do
        expect(page).to have_content("Welcome!")
      end
    end
  end
end
