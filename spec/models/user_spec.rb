require 'rails_helper'

describe User, :type => :model do

  describe 'associations' do
    it { is_expected.to have_many :request }
  end
end
