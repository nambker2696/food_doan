require "rails_helper"

RSpec.describe BookTableDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/book_table_details").to route_to("book_table_details#index")
    end

    it "routes to #new" do
      expect(:get => "/book_table_details/new").to route_to("book_table_details#new")
    end

    it "routes to #show" do
      expect(:get => "/book_table_details/1").to route_to("book_table_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/book_table_details/1/edit").to route_to("book_table_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/book_table_details").to route_to("book_table_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/book_table_details/1").to route_to("book_table_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/book_table_details/1").to route_to("book_table_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/book_table_details/1").to route_to("book_table_details#destroy", :id => "1")
    end

  end
end
