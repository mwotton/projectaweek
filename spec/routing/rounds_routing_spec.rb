require "spec_helper"

describe RoundsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/rounds" }.should route_to(:controller => "rounds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/rounds/new" }.should route_to(:controller => "rounds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/rounds/1" }.should route_to(:controller => "rounds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/rounds/1/edit" }.should route_to(:controller => "rounds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/rounds" }.should route_to(:controller => "rounds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/rounds/1" }.should route_to(:controller => "rounds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/rounds/1" }.should route_to(:controller => "rounds", :action => "destroy", :id => "1")
    end

  end
end
