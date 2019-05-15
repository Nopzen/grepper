require "./spec_helper"

describe Searcher do
  searcher = Searcher.new Dir.glob("./mock/**/*.txt")
  results = searcher.getResult("line")
  result = results[0]

  it "should create a new searcher with array of strings" do
    searcher.getDataSetSize.should eq(2)
  end

  it "should return a array of results" do
    results.size.should eq(3)
    result["filename"].should eq("helloWorld.txt")
  end
end
