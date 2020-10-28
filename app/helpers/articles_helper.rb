module ArticlesHelper
  
  def most_votes(articles)
    most_voted_article = ''
    most_votes = 0
    articles.each do |article|
      if article.votes.count > most_votes
        most_votes = article.votes.count 
        most_voted_article = article
      end
    end
    most_voted_article
  end
end
