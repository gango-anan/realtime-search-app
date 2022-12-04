require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validate presence of title' do
    it { should validate_presence_of(:title) }
  end

  describe 'validate presence of body' do
    it { should validate_presence_of(:body) }
  end

  describe 'sssociation' do
    it { should have_many(:search_histories) }
  end
end
