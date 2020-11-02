require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Associations' do
    it { should have_many(:article_categories) }
    it { should have_many(:categories) }
    it { should have_many(:votes) }
    it { should have_many(:comments) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:image) }
    it { should validate_length_of(:title).is_at_least(3) }
    it { should validate_length_of(:text).is_at_least(3) }
  end
end
