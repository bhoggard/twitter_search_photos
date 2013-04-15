require File.expand_path('../helper', __FILE__)

describe TwitterHashPhotos do
  
  it "has a version" do
    TwitterHashPhotos::VERSION.wont_be_nil
  end
  
  it "returns a response for art" do
    response = TwitterHashPhotos.search('art')
    response.wont_be_nil
  end

end
