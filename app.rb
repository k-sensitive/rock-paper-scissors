require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/rock_paper_scissors') do
  @p1_choice = params.fetch('player1')
  @p2_choice = params.fetch('player2')
  @outcome = @p1_choice.beats?(@p2_choice)
  erb(:rock_paper_scissors)
end
