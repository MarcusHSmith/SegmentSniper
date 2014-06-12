class StaticPagesController < ApplicationController
  def home
  	p "HOME"
  	s = StravaApi::Base.new
  	@errors = s.errors
	p s.segment_show(997729)
	@bernal = s.segment_show(997729)

  end
  def about
  end
end
