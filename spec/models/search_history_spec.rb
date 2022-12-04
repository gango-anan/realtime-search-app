require 'rails_helper'

RSpec.describe SearchHistory, type: :model do
  describe 'validate presence of article' do
    it { should validate_presence_of(:article_id) }
  end

  describe 'association' do
    it { should belong_to(:article) }
  end
end
