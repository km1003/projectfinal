require 'spec_helper'

describe OrdersController do
  render_views

  describe "GET 'customize'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Customize")
    end
  end
  
  describe "GET 'orders'" do
    it "returns http success" do
      get :index
      response.should be_success
    end
    it "should have the right title" do
      get :index
      response.should have_selector("title", :content => "Orders")
    end
  end

end
