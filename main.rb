require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    @title = "Jaclyn Ramkissoon's Portfolio"
    @description = "This site showcases all of the awesome things that Jaclyn Ramkissoon has done."
    @home = "active"
    erb :home
end

get '/about' do
    @title = "About Me"
    @description = "This page provides a short bio for Jaclyn Ramkissoon"
    @about = "active"
    erb :about
end

get '/works' do
    @title = "My Clips"
    @description = "This page provides links to Jaclyn Ramkissoon's published clips."
    @about = "active"
    erb :work
end

get '/tweets' do
    require 'twitter'
    client = Twitter::REST::Client.new do |config|
          config.consumer_key        = "YOUR_CONSUMER_KEY"
          config.consumer_secret     = "YOUR_CONSUMER_SECRET"
          config.access_token        = "YOUR_ACCESS_TOKEN"
          config.access_token_secret = "YOUR_ACCESS_SECRET"
        end
    
    @search_results = client.search("to:mercerfootball", result_type: "recent").take(30).collect do |tweet|
  # "#{tweet.user.screen_name}: #{tweet.text}"
    tweet
end
    
    @title = "My ____ Tweets"
    @description = "This page contains my non-existant tweets, because I do not have a Twitter."
    @tweets = "active"
    erb :tweets
end
    

