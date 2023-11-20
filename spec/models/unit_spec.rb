require 'rails_helper'

RSpec.describe Unit, type: :model do
  subject(:unit) { build(:unit) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:used_symbol) }
    it { is_expected.to validate_presence_of(:grames) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:presentations) }
  end
end
