require 'rails_helper'

describe Province, :type => :model do

  describe 'associations' do
    it { is_expected.to have_many :townships }
  end
end
