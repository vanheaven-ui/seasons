module ArticlesHelper
  def most_voted(articles)
    most_voted_articles = []
    most_votes = 0
    articles.each do |article|
      if article.votes.count >= most_votes
        most_votes = article.votes.count
        most_voted_articles << article
      end
    end
    most_voted_articles.compact[-1]
  end
end
