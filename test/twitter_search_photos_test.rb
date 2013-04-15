require File.expand_path('../helper', __FILE__)

describe TwitterSearchPhotos do
  
  it "has a version" do
    TwitterSearchPhotos::VERSION.wont_be_nil
  end
  
  it "returns a response for art" do
    response = TwitterSearchPhotos.search('art')
    response.wont_be_nil
  end

end
