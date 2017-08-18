require_relative '../lib/gemstones'

RSpec.describe Gemstones do
  context "with input" do
    context "with a single string" do
      before do
        allow(STDIN).to receive(:gets).and_return(n, string_1, string_2)
      end
      context "with an empty string" do
        let(:n) { 2 }
        let(:string_1) { "aabcd" }
        let(:string_2) { "aabfe"}

        it "should return the length of the each identical sequence minus 1" do
          expect{ Gemstones.run }
            . to output("2\n").to_stdout
        end
      end
    end


    # context "multiple inputs" do
    #   let(:n) { 3 }
    #   let(:string_1) { "AAAABBBB" }
    #   let(:string_2) { "AAAABBB" }
    #   let(:string_3) { "AAABBB" }
    #
    #   before do
    #     allow(STDIN).to receive(:gets).and_return(n, string_1, string_2, string_3)
    #   end
    #
    #   it "should return the length of the each identical sequence minus 1" do
    #     expect{ AlternatingCharacters.run }. to output("#{string_1.length - 2}\n#{string_2.length - 2}\n#{string_3.length - 2}\n").to_stdout
    #   end
    # end
  end
end
