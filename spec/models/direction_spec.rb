require 'rails_helper'

describe Direction, :type => :model do

  describe 'associations' do
    it { is_expected.to belong_to :request }
    it { is_expected.to have_one :province }
    it { is_expected.to have_one :township }
    it { is_expected.to have_one :district }
  end
end
