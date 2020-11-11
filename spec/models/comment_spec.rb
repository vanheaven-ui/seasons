require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:article) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:comment) }
    it { should validate_length_of(:comment).is_at_least(3) }
  end
end
