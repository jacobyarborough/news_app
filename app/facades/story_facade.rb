class StoryFacade
  class << self 
    def get_popular_stories
      article_array = []
      StoryService.get_popular_stories[:articles].each do |story|
        article_array.push(Article.new(story))
      end 

      article_array
    end 
  end 
end 