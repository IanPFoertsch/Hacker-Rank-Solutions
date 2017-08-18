require_relative '../lib/save_the_prisoner'

RSpec.describe SaveThePrisoner do

  shared_examples_for "return value" do
    before do
      allow(STDIN).to receive(:gets).and_return(num_test_cases,
        test_case_strings[0],
        test_case_strings[1],
        test_case_strings[2],
        )
    end

    it "should be 1" do
      SaveThePrisoner.run
    end
  end

  context "test 1" do
    let(:num_test_cases) { "1" }
    let(:test_case_strings) { ["5 2 1"] }
    let(:expectation) { 2 }

    include_examples "return value"
  end

  context "test 1" do
    let(:num_test_cases) { "3" }
    let(:test_case_strings) { ["5 2 1", "3, 10, 2", "7, 12, 3"] }


    include_examples "return value"
  end
end
