require 'rails_helper'

RSpec.describe GithubService do
  describe ".search" do
    it "returns an array of repositories" do
      stubbed_response = {
        items: [
          { full_name: "test/repo1" },
          { full_name: "test/repo2" }
        ]
      }.to_json

      allow(Net::HTTP).to receive(:get).and_return(stubbed_response)

      result = GithubService.search("test")
      expect(result).to eq([{ full_name: "test/repo1" }, { full_name: "test/repo2" }])
    end
  end
end
