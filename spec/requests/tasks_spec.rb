require 'spec_helper'

describe "Tasks" do
  before(:all) do
    @user = Factory.create(:user)
    @location = Factory(:location)
    login_usr
  end

  def login_usr
    visit new_user_session_path
    fill_in 'Email', :with => @user.email
    fill_in 'Password', :with => @user.password
    click_button 'Sign in'
  end

  describe "GET /locations" do
    it "displays locations" do
      get locations_path
      response.status.should be(200)
    end
  end
  
  describe "POST /locations" do
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
