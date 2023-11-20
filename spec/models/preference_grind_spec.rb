require 'rails_helper'

RSpec.describe PreferenceGrind, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:preference) }
    it { is_expected.to belong_to(:grind) }
  end
end
