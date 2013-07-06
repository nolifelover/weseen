require 'spec_helper'

describe "IssueProgesses" do
  describe "GET /issue_progesses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get issue_progesses_path
      response.status.should be(200)
    end
  end
end
