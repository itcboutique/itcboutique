require 'spec_helper'

describe StoresController do

  describe "GET 'store'" do
    it "returns http success" do
      get 'store'
      response.should be_success
    end
  end

end
