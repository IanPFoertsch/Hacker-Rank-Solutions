require_relative '../lib/alternating_characters'

RSpec.describe AlternatingCharacters do
  context "with input" do
    context "with a single string" do
      before do
        allow(STDIN).to receive(:gets).and_return(n, string)
      end
      context "with an empty string" do
        let(:n) { 1 }
        let(:string) { "" }

        it "should return 0" do

          expect{ AlternatingCharacters.run }. to output("0\n").to_stdout
        end
      end

      context "with a string of alternating characters" do
        let(:n) { 1 }
        let(:string) { "ABABABAB" }

        it "should return 0" do
          expect{ AlternatingCharacters.run }. to output("0\n").to_stdout
        end

      end

      context "with a string of identical characters" do
        let(:n) { 1 }
        let(:string) { "AAAAAA" }

        it "should return the length of the string minus 1" do
          expect{ AlternatingCharacters.run }. to output("#{string.length - 1}\n").to_stdout

        end
      end

      context "with a series of identical, followed by other characters" do
        let(:n) { 1 }
        let(:string) { "AAAABBBB" }

        it "should return the length of the each identical sequence minus 1" do
          expect{ AlternatingCharacters.run }. to output("#{string.length - 2}\n").to_stdout
        end
      end
    end


    context "with a series of identical, followed by other characters" do
      let(:n) { 3 }
      let(:string_1) { "AAAABBBB" }
      let(:string_2) { "AAAABBB" }
      let(:string_3) { "AAABBB" }

      before do
        allow(STDIN).to receive(:gets).and_return(n, string_1, string_2, string_3)
      end

      it "should return the length of the each identical sequence minus 1" do
        expect{ AlternatingCharacters.run }. to output("#{string_1.length - 2}\n#{string_2.length - 2}\n#{string_3.length - 2}\n").to_stdout
      end
    end
  end
end
