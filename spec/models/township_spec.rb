require 'rails_helper'

describe Township, :type => :model do

  describe 'associations' do
    it { is_expected.to belong_to :province }
    it { is_expected.to have_many :districts }
  end
end
