require 'spec_helper'

describe CategoriesController do

  describe "GET 'category'" do
    it "returns http success" do
      get 'category'
      response.should be_success
    end
  end

end
