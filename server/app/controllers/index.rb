before "*" do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

get '/inspect-session' do
  session.inspect
end

get '/clear-session' do
  session.clear

  session.inspect
end

get '/populate-session' do
  session[:data] = SecureRandom.hex

  session.inspect
end
