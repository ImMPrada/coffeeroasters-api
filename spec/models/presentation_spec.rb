require 'rails_helper'

RSpec.describe Presentation, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:price) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:unit) }
  end

  describe '#total_grames' do
    subject(:presentation) { build(:presentation) }

    it 'should return total_grames' do
      expect(presentation.total_grames).to eq(presentation.amount * presentation.unit.grames)
    end
  end
end
