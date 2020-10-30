require 'rails_helper'

RSpec.describe ArticleCategory, type: :model do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"
=======
  describe 'Associations' do
    it { should belong_to (:article) }
    it { should belong_to (:category) }
  end
>>>>>>> feature/mvp-v1
end
