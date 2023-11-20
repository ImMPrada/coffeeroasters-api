require 'rails_helper'

RSpec.describe Presentation, type: :model do
  subject(:presentation) { build(:presentation) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:amount) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:unit) }
  end
end
