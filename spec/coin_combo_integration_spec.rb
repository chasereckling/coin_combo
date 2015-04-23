require('capybara/rspec')
require('./app')
require('pry')

Capybara.app = Sinatra::Application
describe('coin combo', {:type => :feature}) do
  it('processes the user entries and returns the amount of coins') do
    visit('/')
    fill_in('change', :with => '99')
    click_button('Send')
    expect(page).to have_content('3 quarters, 2 dimes, 0 nickles, and 4 pennies')
   end
end
