require 'rails_helper'

describe Request, :type => :model do

  describe 'associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :directions }
    it { is_expected.to accept_nested_attributes_for :directions }
  end
end
