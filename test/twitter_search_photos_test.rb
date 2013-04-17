require File.expand_path('../helper', __FILE__)

describe TwitterSearchPhotos do

  def setup
    @response = TwitterSearchPhotos.search('#art')
    @photo    = @response.results.first
  end

  it "has a version" do
    TwitterSearchPhotos::VERSION.wont_be_nil
  end
  
  it 'returns a response for #art' do
    @response.wont_be_nil
  end

  it 'provides a max_id' do
    @response.max_id.wont_be_nil
  end

  it 'returns at least one image' do
    @photo.media_url.must_match /^http/
  end

  it 'returns display_url for image' do
    @photo.display_url.must_match /^http/
  end

  it 'returns a screen_name' do
    @photo.screen_name.wont_be_nil
  end

  it 'returns created_at' do
    @photo.created_at.must_be_kind_of DateTime
  end

  it 'returns a responce when called with since_id' do
    @max_id = @response.max_id
    @since_response = TwitterSearchPhotos.search('#art', since_id: @max_id)
    @since_response.max_id.wont_equal @max_id
  end

end
