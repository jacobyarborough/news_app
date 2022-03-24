class Article
  attr_reader :source,
              :title,
              :author,
              :url,
              :image,
              :date

  def initialize(article_info)
    @source = article_info[:source][:name]
    @title = article_info[:title]
    @author = article_info[:author]
    @url = article_info[:url]
    @image = article_info[:urlToImage]
    @date = article_info[:publishedAt]
  end 
end 