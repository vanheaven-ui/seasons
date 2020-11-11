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

  def article_image_attached_check(resource)
    image_tag(@article.image, class: 'article-img w-100 vh-60') if resource.image.attached?
  end

  def article_categories_exist_check(resource)
    return unless resource.categories.any?

    content_tag(:span, resource.categories.first.name.upcase, class: 'even-category text-white transparent-bg')
  end

  def article_comments_exist_check(resource)
    render 'comments/comment', locals: { resource: resource } if resource.comments.any?
  end
end
