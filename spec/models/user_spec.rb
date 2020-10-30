require 'rails_helper'

RSpec.describe User, type: :model do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"
=======
  describe 'Associations' do
    it { should have_many(:authored_articles).class_name('Article') }
    it { should have_many(:votes) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_length_of(:username).is_at_least(3) }
    it { should validate_length_of(:name).is_at_least(3) }
  end
>>>>>>> feature/mvp-v1
end
