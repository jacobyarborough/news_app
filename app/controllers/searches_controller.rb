class SearchesController < ApplicationController 
  def new 
    @top_stories = StoryFacade.get_popular_stories
  end

  def index
    binding.pry
  end 
end  