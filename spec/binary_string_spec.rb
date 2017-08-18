require_relative '../lib/binary_string'

RSpec.describe BinaryString do
  context "with a binary string" do

    let(:string) { "01001010100101110101001\n" }

    before do
      allow(STDIN).to receive(:gets).and_return(string.length.to_s + "\n", string)

    end

    context "when it starts with 010" do
      let(:string) { "010\n" }

      it "should return 1" do

        expect(BinaryString.process).to eq(1)
      end

      context "with a run-on" do
        let(:string) { "0101010\n" }

        it "should return 2" do
          expect(BinaryString.process).to eq(2)
        end
      end


      context "with 2 010 seperated" do
        let(:string) { "0000100000101010\n" }
        it "should return 2" do
          expect(BinaryString.process).to eq(3)
        end
      end

      context "with a series of run-ons" do
        let(:string) { "0101010101\n" }
        it "should return 2" do
          expect(BinaryString.process).to eq(2)
        end
      end

      context "with no sequences" do
        let(:string) { "0000000" }



      end
    end
  end
end
