require 'rails_helper'

RSpec.describe Grind, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:preference_grinds) }
    it { is_expected.to have_many(:preferences) }
  end
end
