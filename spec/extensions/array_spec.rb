require 'spec_helper'

describe Array do
  subject { [1,2,3] }

  its(:hello) { should == 'world' }

  describe '#max_subarray' do
    let(:arr) { [1,7,0,-3,4,21,-7] }

    subject { arr.max_subarray }

    it { should == [1,7,0,-3,4,21] }

    describe 'edge cases' do

      describe 'empty array' do
        let(:arr) {[]}

        it { should == [] }
      end

      describe 'all negative numbers' do
        let(:arr) { [-24,-4,-3,-11] }
        it { should == [-3] }
      end

      describe 'flip flop sequences' do
        let(:arr) { [4,-4,4,-4] }
        it { should == [4] }
      end

      describe 'symmetrical arrays' do
        let(:arr) { [-3, 0, -3] }

      end

      describe 'first element test' do
        let(:arr) { [78,1,5,-8]}
        it { should == [78,1,5] }
      end
      describe 'last element test' do
        let(:arr) { [11,-4,-8,104]}
        it { should == [104] }
      end
    end
  end

  describe "#sum" do
    subject { arr.sum }

    describe 'sample 1' do
      let( :arr ) { [11,-4,-8,104]}
      it { should == 103 }
    end

    describe 'sample 2' do
      let( :arr ) { [78,1,5,-8] }
      it { should == 76 }
    end

    describe 'sample 3' do
      let( :arr ) { [-3, 0, -3] }
      it { should == -6 }
    end


  end
end

