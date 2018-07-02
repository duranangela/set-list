=begin
As a visitor
When I visit the home page of the app
Then I should see a welcome message
=end

RSpec.describe 'a visitor visiting a welcome page' do
  context 'visiting /' do
    it 'should show a welcome message' do

      visit '/'

      within("#greeting") do
        expect(page).to have_content("Welcome!")
      end
    end
    it 'should show a login button' do

      visit '/'

      within('#button') do
        expect(page).to have_content("Login")
      end
    end
    it 'should go to login page when login is clicked' do

      visit '/'
      click_button("Login")

      expect(current_path).to eq('/login')
      expect(page).to have_content('Login information')

    end
  end
end
