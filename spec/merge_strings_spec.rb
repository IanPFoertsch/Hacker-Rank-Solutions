require_relative '../lib/merge_strings'

  context "with a camelcase string" do
    it "should do stuff" do
      expect(mergeStrings("abc","def")).to eq("adbecf")
    end

    it "should do stuff" do
      expect(mergeStrings("ab","zsd")).to eq("azbsd")
    end

    it "should do stuff" do
      expect(mergeStrings("ab","zsdkls")).to eq("azbsdkls")
    end
end
