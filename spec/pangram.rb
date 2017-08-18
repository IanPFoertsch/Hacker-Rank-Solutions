require_relative '../lib/pangram'

RSpec.describe Pangram do
  context "with a camelcase string" do
    let(:string) { "thisIsInCamelCase" }

    before do
      allow(STDIN).to receive(:gets).and_return("thisIsTheCamelCaseString")
    end
    it "should do stuff" do
      expect(CamelCase.run).to eq(6)
    end
  end

end
