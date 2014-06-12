class StaticPagesController < ApplicationController
  def home
  	p "HOME"
	@client = Strava::Api::V3::Client.new(:access_token => "3db13d4c374cab1f8f2c225eb3eaa683cc0c7f89")
	p @client
	p @client.retrieve_current_athlete
  end
  def about
  end
end
