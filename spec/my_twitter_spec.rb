require_relative 'spec_helper.rb'

describe "twitter spec" do
  describe "GET /" do
    it "returns response ok" do
      #given
      get '/'
      #when
      #then
      expect(last_reponse).to be_ok
    end

    it "response with  one URL" do
      #given
      tweets = Tweet.all
      #when
      #then
      expect(urls.count).to be > 0
    end
  end
end
