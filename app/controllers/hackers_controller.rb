class HackersController < ApplicationController
  # GET /hackers
  # GET /hackers.xml
  def index
    @hackers = Hacker.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hackers }
    end
  end

  # GET /hackers/1
  # GET /hackers/1.xml
  def show
    @hacker = Hacker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hacker }
    end
  end

  # GET /hackers/new
  # GET /hackers/new.xml
  def new
    @hacker = Hacker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hacker }
    end
  end

  # GET /hackers/1/edit
  def edit
    @hacker = Hacker.find(params[:id])
  end

  # POST /hackers
  # POST /hackers.xml
  def create
    @hacker = Hacker.new(params[:hacker])

    respond_to do |format|
      if @hacker.save
        format.html { redirect_to(@hacker, :notice => 'Hacker was successfully created.') }
        format.xml  { render :xml => @hacker, :status => :created, :location => @hacker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hacker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hackers/1
  # PUT /hackers/1.xml
  def update
    @hacker = Hacker.find(params[:id])

    respond_to do |format|
      if @hacker.update_attributes(params[:hacker])
        format.html { redirect_to(@hacker, :notice => 'Hacker was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hacker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hackers/1
  # DELETE /hackers/1.xml
  def destroy
    @hacker = Hacker.find(params[:id])
    @hacker.destroy

    respond_to do |format|
      format.html { redirect_to(hackers_url) }
      format.xml  { head :ok }
    end
  end
end
