require 'spec_helper'

describe "Tasks" do
  before(:each) do
    @location = Factory(:location)
  end

  describe "GET /locations" do
    it "displays locations" do
      get locations_path
      response.status.should be(200)
    end
  end
  
  describe "Post /locations" do
    it "creates location" do
      visit new_location_path
      fill_in "Address", :with => @location.address
      click_button "Create Location"
      #save_and_open_page
      page.should have_content("Wrigley Field")
      #page.should_not have_css(".notice")
    end
  end

end
