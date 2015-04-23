require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change') do
  @quarters = params.fetch('change').coin_combo("quarters")
  @dimes = params.fetch('change').coin_combo("dimes")
  @nickles = params.fetch('change').coin_combo("nickles")
  @pennies = params.fetch('change').coin_combo("pennies")
  erb(:change)
end
