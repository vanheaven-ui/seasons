module CategoriesHelper
  def article_categories_exist_check_odd(resource)
    return unless resource.categories.any?

    content_tag(:span, resource.categories.first.name.upcase, class: 'odd-category text-white transparent-bg')
  end

  def category_article_image_check(resource)
    image_tag(resource.image, class: 'article-img w-100 vh-40') if resource.image.attached?
  end

  def category_display(resource)
    if resource.articles.any?
      render 'categories/article_exist'
    else
      render 'categories/article_not_exist'
    end
  end
end
