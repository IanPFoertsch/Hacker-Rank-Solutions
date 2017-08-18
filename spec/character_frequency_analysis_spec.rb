require_relative '../lib/character_frequency_analysis'

RSpec.describe FrequencyAnalysis do
  context "with input" do
    let(:string) { "5\naaabbb\nab\nabc\nmnop\nxyyx" }

    before do
      allow(STDIN).to receive(:gets).and_return(string)
    end

    context "when it starts with 010" do
      it "should run" do
        FrequencyAnalysis.new.run
      end
    end

    context "seriously" do
      let(:string) { "10\nhhpddlnnsjfoyxpciioigvjqzfbpllssuj\nxulkowreuowzxgnhmiqekxhzistdocbnyozmnqthhpievvlj\ndnqaurlplofnrtmh\naujteqimwfkjoqodgqaxbrkrwykpmuimqtgulojjwtukjiqrasqejbvfbixnchzsahpnyayutsgecwvcqngzoehrmeeqlgknnb\nlbafwuoawkxydlfcbjjtxpzpchzrvbtievqbpedlqbktorypcjkzzkodrpvosqzxmpad\ndrngbjuuhmwqwxrinxccsqxkpwygwcdbtriwaesjsobrntzaqbe\nubulzt\nvxxzsqjqsnibgydzlyynqcrayvwjurfsqfrivayopgrxewwruvemzy\nxtnipeqhxvafqaggqoanvwkmthtfirwhmjrbphlmeluvoa\ngqdvlchavotcykafyjzbbgmnlajiqlnwctrnvznspiwquxxsiwuldizqkkaawpyyisnftdzklwagv"}

      it "should run" do
        FrequencyAnalysis.new.run
      end
    end
  end
end
