require 'spec_helper'


describe Interview do

  subject { Interview.new }

  describe '#are_we_live' do
    it { should be_true }
  end

end