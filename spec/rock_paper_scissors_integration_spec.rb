require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the rock paper scissor path', {:type => :feature}) do
  it('processes the user entries and returns a winner') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'scissors')
    click_button('Fight!')
    expect(page).to have_content(true)
  end
end
