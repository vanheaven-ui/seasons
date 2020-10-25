module ArticlesHelper
  
  def top_voted(articles)
    most_votes = 0
    articles.each do |article|
      most_votes = article.votes.count if article.votes.count > most_votes
    end
    most_votes
  end
end
