require "spec_helper"

describe HackersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/hackers" }.should route_to(:controller => "hackers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/hackers/new" }.should route_to(:controller => "hackers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/hackers/1" }.should route_to(:controller => "hackers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/hackers/1/edit" }.should route_to(:controller => "hackers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/hackers" }.should route_to(:controller => "hackers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/hackers/1" }.should route_to(:controller => "hackers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/hackers/1" }.should route_to(:controller => "hackers", :action => "destroy", :id => "1")
    end

  end
end
