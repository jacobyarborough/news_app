class StoryService
  class << self
    def get_popular_stories
      response = conn.get("/v2/top-headlines?country=us")
      parse_data(response)
    end 

    private 
    def conn 
      Faraday.new("https://newsapi.org") do |x|
        x.params['apiKey'] = ENV['news_api_key']
      end 
    end 

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end 
  end 
end 