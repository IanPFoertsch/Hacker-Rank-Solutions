require_relative '../lib/strange_counter'

RSpec.describe StrangeCounter do

  shared_examples_for "return value" do
    before do
      allow(STDIN).to receive(:gets).and_return(thing)
    end

    it "should be 1" do
      expect(StrangeCounter.run).to eq(expected)
    end
  end


  context "stuff" do
    let(:thing) { "1" }
    let(:expected) { 3 }
    include_examples "return value"
  end

  context "2" do
    let(:thing) { "2" }
    let(:expected) { 2 }
    include_examples "return value"
  end
  context "3" do
    let(:thing) { "24" }
    let(:expected) { 22 }
    include_examples "return value"
  end

  context "4" do
    let(:thing) { "4" }
    let(:expected) { 6 }
    include_examples "return value"
  end

  context "10" do
    let(:thing) { "14" }
    let(:expected) { 8 }
    include_examples "return value"
  end
  context "10" do
    let(:thing) { "21" }
    let(:expected) { 1 }
    include_examples "return value"
  end
  context "10" do
    let(:thing) { "21" }
    let(:expected) { 1 }
    include_examples "return value"
  end
  context "9" do
    let(:thing) { "13" }
    let(:expected) { 9 }
    include_examples "return value"
  end
  context "19" do
    let(:thing) { "24" }
    let(:expected) { 22 }
    include_examples "return value"
  end

end
