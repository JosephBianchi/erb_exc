require 'sinatra'

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end

get '/favorites' do
  @fav_links = ['http://www.google.com', 'http://www.yahoo.com', 'http://www.msn.com']
  erb :favorites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end
