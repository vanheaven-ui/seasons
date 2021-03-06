module ApplicationHelper
  def flash_msgs(key, value)
    if key == 'notice'
      content_tag('span', value, class: 'alert alert-success text-center mb-0 px-3 py-0 text-bold d-block mx-auto',
                                 style: 'width: fit-content')
    elsif key == 'alert'
      content_tag('span', value, class: 'alert alert-danger text-center mb-0 px-3 py-0 text-bold d-block mx-auto',
                                 style: 'width: fit-content')
    end
  end

  def vote_or_unvote(article)
    vote = Vote.find_by(article_id: article.id, user_id: current_user.id)
    if vote
      link_to('UNVOTE',
              article_vote_path(article_id: article.id, id: vote.id), class: 'btn btn-danger',
                                                                      method: :delete)
    else
      link_to('VOTE',
              article_votes_path(article_id: article.id), class: 'btn btn-orange',
                                                          method: :post)
    end
  end

  def signed_in_or_not_manager
    if user_signed_in?
      render 'shared/logged_in'
    else
      render 'shared/not_signed_in'
    end
  end

  def authorize_edit(resource)
    render 'articles/edit_link' if can? :update, resource
  end
end
