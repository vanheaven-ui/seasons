require 'rails_helper'

RSpec.describe Vote, type: :model do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"
=======
  it { should belong_to(:user) }
  it { should belong_to(:article) }
>>>>>>> feature/mvp-v1
end
