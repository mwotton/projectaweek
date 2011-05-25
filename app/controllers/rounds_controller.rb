class RoundsController < ApplicationController
  # GET /rounds
  # GET /rounds.xml
  def index
    @rounds = Round.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rounds }
    end
  end

  # GET /rounds/1
  # GET /rounds/1.xml
  def show
    @round = Round.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @round }
    end
  end

  # GET /rounds/new
  # GET /rounds/new.xml
  def new
    @round = Round.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @round }
    end
  end

  # GET /rounds/1/edit
  def edit
    @round = Round.find(params[:id])
  end

  # POST /rounds
  # POST /rounds.xml
  def create
    @round = Round.new(params[:round])

    respond_to do |format|
      if @round.save
        format.html { redirect_to(@round, :notice => 'Round was successfully created.') }
        format.xml  { render :xml => @round, :status => :created, :location => @round }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @round.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rounds/1
  # PUT /rounds/1.xml
  def update
    @round = Round.find(params[:id])

    respond_to do |format|
      if @round.update_attributes(params[:round])
        format.html { redirect_to(@round, :notice => 'Round was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @round.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rounds/1
  # DELETE /rounds/1.xml
  def destroy
    @round = Round.find(params[:id])
    @round.destroy

    respond_to do |format|
      format.html { redirect_to(rounds_url) }
      format.xml  { head :ok }
    end
  end
end
