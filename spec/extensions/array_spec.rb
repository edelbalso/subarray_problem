require 'spec_helper'

describe Array do
  subject { [1,2,3] }

  its(:hello) { should == 'world' }

  describe '#max_subarray' do
    subject { [1,7,0,-3,4,21,-7].max_subarray }

    it { should == [1,7,0,-3,4,21] }

    describe 'edge cases' do

      describe 'empty array' do
        subject {[]}

        it { should == [] }
      end

      describe 'all negative numbers' do
        subject { [-24,-4,-3,-11] }
        it { should == subject }
      end

      describe 'flip flop sequences' do
        subject { [4,-4,4,-4] }
        it { should == [4] }
      end

      describe 'symmetrical arrays' do
        subject { [-3, 0, -3] }

      end


      describe 'first element test' do
        subject { [78,1,5,-8]}
        it { should == [78] }
      end
      describe 'last element test' do
        subject { [15,-4,-8,104]}
        it { should == [104] }
      end
    end
  end
end

