require 'rails_helper'

RSpec.describe PreferencePresentation, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:preference) }
    it { is_expected.to belong_to(:presentation) }
  end
end
