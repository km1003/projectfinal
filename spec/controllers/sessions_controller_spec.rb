require 'spec_helper'

describe SessionsController do
  render_views

  describe "GET 'submit'" do
    it "returns http success" do
      get 'submit'
      response.should be_success
    end
    it "should have the right title" do
      get :submit
      response.should have_selector("title", :content => "Submit Order")
    end
  end

end
