class StaticPagesController < ApplicationController
  def home
	@client = Strava::Api::V3::Client.new(:access_token => "3db13d4c374cab1f8f2c225eb3eaa683cc0c7f89")
	@segment = @client.retrieve_a_segment(997729)
	@leaderboard = @client.segment_leaderboards(997729)
	@athlete_id = @leaderboard["entries"][1]["athlete_id"]
	@athlete = @client.retrieve_another_athlete(@athlete_id)
	puts JSON.pretty_generate(@athlete)
  end
  def about
  end
end
