require 'rails_helper'

describe District, :type => :model do

  describe 'associations' do
    it { is_expected.to belong_to :township }
  end
end
