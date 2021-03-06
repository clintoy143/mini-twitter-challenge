require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
    
    def setup
        @base_title = "Review on Rails"
    end
    
    test "should get index" do
        get root_url
        assert_response :success
        assert_select "title", "Home | #{@base_title}"
    end

    test "should get about" do
        get about_url
        assert_response :success
        assert_select "title", "About | #{@base_title}"
    end
    
    test "should get contact" do
        get contact_url
        assert_response :success
        assert_select "title", "Contacts | #{@base_title}"
    end
end
