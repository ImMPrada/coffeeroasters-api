require 'rails_helper'

RSpec.describe Frecuency, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:monthly_amount) }
    it { is_expected.to validate_presence_of(:base_price) }
  end
end
