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

get '/works'do
    @title = "My Clips"
    @description = "This page provides links to Jaclyn Ramkissoon's published clips."
    @about = "active"
    erb :work
end