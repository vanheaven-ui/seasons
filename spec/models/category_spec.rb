require 'rails_helper'

RSpec.describe Category, type: :model do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"
=======
  describe 'Associations' do
    it { should have_many(:article_categories) }
    it { should have_many(:articles) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:priority) }
    it { should validate_length_of(:name).is_at_least(3) }
    it { should validate_uniqueness_of(:priority) }
  end
>>>>>>> feature/mvp-v1
end
