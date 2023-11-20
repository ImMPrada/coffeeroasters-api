require 'rails_helper'

RSpec.describe Preference, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:preference_presentations) }
    it { is_expected.to have_many(:presentations) }
  end
end
